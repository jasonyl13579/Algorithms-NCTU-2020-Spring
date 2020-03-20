#include <iostream>
#include <fstream>
#include <vector>
#include <bitset>
using namespace std;
struct Cell  
{ 
    string name; 
    int x;
    int y;
    string power;
}; 
int cal_manha(Cell a, Cell b);
void scan_chn(fstream &fs, vector<Cell> &cells);
void scan_src(fstream &fin, fstream &fout, vector<string> &patterns);
void output_chn(fstream &fs, vector<Cell> &cells);
void output_rpt(fstream &fs, int origin_chain_length, int reorder_chain_length, double origin_max_power, double reorder_max_power);
void output_ptn(fstream &fs, vector<string> patterns);
void sort_chn_by_manhattan(vector<Cell> &cells, vector<string> &patterns);
int cal_chn_length(vector<Cell> &cells);
double cal_max_power(vector<Cell> &cells, vector<string> patterns);
int main(int argc, char** argv) 
{ 
    if (argc < 7){
        cout << "Arguments not enough." << endl;
        cout << "Usage: ./pb01    t1.chn    t1.src    t1.cfg    t1.ror    t1.ptn    t1.rpt" << endl;
        return 0;
    }
    time_t start, end;
    start = time(NULL);
    
    fstream fs_chn, fs_src, fs_cfg;
    fstream fout_chn, fout_src, fout_rpt;
    fs_chn.open (argv[1], std::fstream::in | std::fstream::app);
    fs_src.open (argv[2], std::fstream::in | std::fstream::app);
    fs_cfg.open (argv[3], std::fstream::in | std::fstream::app);
    fout_chn.open (argv[4], std::fstream::out | std::fstream::trunc);
    fout_src.open (argv[5], std::fstream::out | std::fstream::trunc);
    fout_rpt.open (argv[6], std::fstream::out | std::fstream::trunc);
    vector<Cell> cells;
    vector<string> patterns;
    
    scan_chn(fs_chn, cells);
    scan_src(fs_src, fout_src, patterns);
    
    int origin_chain_length = cal_chn_length(cells);
    double origin_max_power = cal_max_power(cells, patterns);
    
    sort_chn_by_manhattan(cells, patterns);  
    int reorder_chain_length = cal_chn_length(cells);
    double reorder_max_power = cal_max_power(cells, patterns);
    
    output_rpt(fout_rpt,origin_chain_length,reorder_chain_length,origin_max_power,reorder_max_power);
    output_chn(fout_chn, cells);
    output_ptn(fout_src, patterns);
    
    end = time(NULL);
    double diff = difftime(end, start);
    cout << diff << " sec" << endl;
    
    fs_chn.close();
    fs_src.close();
    fs_cfg.close();
    fout_chn.close();
    fout_src.close();
    fout_rpt.close();
    return 0; 
} 
void scan_chn(fstream &fs, vector<Cell> &cells)
{
    string name, xS, yS;
    string power;
    int x, y;
    while (fs >> name >> xS >> yS >> power){  
        //cout << power << endl;
        xS.erase(xS.end()-1, xS.end());
        xS.erase(xS.begin(),xS.begin()+1);
        yS.erase(yS.end()-1, yS.end());
        x = stoi(xS,nullptr,10);
        y = stoi(yS,nullptr,10);
        cells.push_back(Cell{name,x,y,power});
    }
    return;
}
void output_chn(fstream &fs, vector<Cell> &cells)
{
    for (auto cell: cells)
    {
        fs << cell.name << "	<" << cell.x << ",	" << cell.y << ">	" << cell.power << endl; 
    }
}
void output_rpt(fstream &fs, int origin_chain_length, int reorder_chain_length, double origin_max_power, double reorder_max_power)
{
    //int origin_chain_length = cal_chn_length(cells);
    //sort_chn_by_manhattan(cells);
    //int reorder_chain_length = cal_chn_length(cells);
    //double reorder_max_power = cal_max_power(cells);
    fs << "Original:" << endl
       << "Scan-Chain Length = " << origin_chain_length << endl
       << "Max Peak Power = " << origin_max_power << endl
       << "Reordered:" << endl
       << "Scan-Chain Length = " << reorder_chain_length << endl
       << "Max Peak Power = " << reorder_max_power << endl;
}
void output_ptn(fstream &fs, vector<string> patterns){
    for (auto p : patterns){
        if (p.size() > 1023){
            int s = 0;
            while (s < p.size()- 1023){
                fs << p.substr(s,1023) << '\\' << endl;
                s+=1023;
            }
            //cout << p.size() << ","<<  s << endl;
            fs << p.substr(s) << endl;
        }
        else fs << p << endl;
    }
}
void scan_src(fstream &fin, fstream &fout, vector<string> &patterns){
    string s;
    string pattern = "";
    while (fin >> s){
        //fout << s << endl;
        pattern += s;
        if (s[s.size()-1] == '\\'){
            pattern.erase(pattern.size()-1);
            continue;
        }
        /*string zero = "", one = "";
        for (char c : pattern)
        {
            if (c == '0') zero += '0';
            else one += '1';
        }
        fout << zero << one << endl;*/
        //cout << pattern.size() << endl;
        patterns.push_back(pattern);
        pattern = "";
    }
}
int cal_manha(Cell a, Cell b){
    return abs(a.x - b.x)+abs(a.y - b.y);
}
int cal_chn_length(vector<Cell> &cells)
{
    int res = 0;
    for (int i=1;i<cells.size();i++){
        res += (cal_manha(cells[i], cells[i-1]));
    }
    //cout << res << endl;
    return res;
}
void sort_chn_by_manhattan(vector<Cell> &cells, vector<string> &patterns)
{
    for (int i=0;i<cells.size();i++){
        int min = INT8_MAX;
        for (int j=i+1;j<cells.size()-1;j++){
            int diff = 0;
            for (auto p : patterns){
                diff += (p[i] != p[j]);
            }
            int dis = cal_manha(cells[i], cells[j]) + diff/2;
            if ( dis < min){
                min = dis;
                swap(cells[i+1], cells[j]);
                for (auto &p : patterns){
                    swap(p[i+1],p[j]);
                }
            }
        }
    }
}
double cal_max_power(vector<Cell> &cells, vector<string> patterns)
{
    string s(cells.size(), '0');
    bitset<9000>state(s);
    bitset<9000>nstate(s);
    double max_power = 0;
    for (int p = 0; p < patterns.size(); p++){    
        for (int cycle = 0; cycle < cells.size(); cycle++){
            nstate = (state << 1);
            nstate[0] = patterns[p][cycle] - '0';
            bitset<9000>t = (state ^ nstate);
            double power = 0;
            for (int i = 0; i < cells.size(); i++){
                if (t[i] == 1) power += stod(cells[i].power);
            }
            max_power = max_power > power ? max_power : power;
            state = nstate;
        }
        //cout << max_power << endl;
        //cout << state << endl;
    }
    //cout << max_power;
    //auto x = bitset<9000>(state) ^ bitset<9000>(patterns[0]);
    //cout << x << endl;
    /*for (int cycle = 0; cycle < cells.size(); cycle++){
        for (int p = 0; p < patters.size(); p++){
            
        }
    }*/
    /*double max = INT8_MIN;
    for (auto cell : cells){
        max = max > stod(cell.power) ? max : stod(cell.power);
    }*/
    //cout << max << endl;
    return max_power;
}
    