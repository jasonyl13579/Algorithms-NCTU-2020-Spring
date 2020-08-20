#include <iostream>
#include <fstream>
#include <vector>
#include <unordered_map>
#include <unordered_set>
#include <algorithm>
#include <queue>
using namespace std;
struct Wire  
{ 
    vector<string> connections; 
    double cost;
}; 
void scan_circuit(fstream &fs, unordered_map<string, Wire> &wires, unordered_map<string, vector<string>> &cells, unordered_map<string, vector<string>> &input_cells);
void scan_co(fstream &fs, unordered_map<string, Wire> &wires);
void output_rpt(fstream &fs, pair<double, double> ans);
void output_pt(fstream &fs,  unordered_set <string> cell_names);
vector<string>  split(const string& str,const string& delim);
pair<double, double> solver(unordered_map<string, Wire> &wires, unordered_map<string, vector<string>> &cells, unordered_map<string, vector<string>> &input_cells, unordered_set <string> &pt1_cell_names, unordered_set <string> &pt2_cell_names);
int main(int argc, char** argv) 
{ 
    if (argc < 6){
        cout << "Arguments not enough." << endl;
        cout << "Usage: ./pb02 b07.v b07.co b07.pt1 b07.pt2 b07.rpt" << endl;
        return 0;
    }
    time_t start, end;
    start = time(NULL);
    
    fstream fs_circuit, fs_co;
    fstream fout_pt1, fout_pt2, fout_rpt;
    fs_circuit.open (argv[1], std::fstream::in | std::fstream::app);
    fs_co.open (argv[2], std::fstream::in | std::fstream::app);
    fout_pt1.open (argv[3], std::fstream::out | std::fstream::trunc);
    fout_pt2.open (argv[4], std::fstream::out | std::fstream::trunc);
    fout_rpt.open (argv[5], std::fstream::out | std::fstream::trunc);
    
    unordered_map <string, Wire> wires ;
    unordered_map <string, vector<string>> cells ;
    unordered_set <string> pt1_cell_names;
    unordered_set <string> pt2_cell_names;
    unordered_set <string> wire_names;
    unordered_map <string, vector<string>> input_cell;
    scan_circuit(fs_circuit, wires, cells, input_cell);
    
    scan_co(fs_co, wires);
    pair <double, double> ans;
    double max_cutting_overhead = 0;
    double ratio = 1;
    ans = solver(wires, cells, input_cell, pt1_cell_names, pt2_cell_names);
    /*int origin_chain_length = cal_chn_length(cells);
    double origin_max_power = cal_max_power(cells, patterns);
    
    sort_chn_by_manhattan(cells, patterns);  
    int reorder_chain_length = cal_chn_length(cells);
    double reorder_max_power = cal_max_power(cells, patterns);
    
    output_rpt(fout_rpt,origin_chain_length,reorder_chain_length,origin_max_power,reorder_max_power);
    output_chn(fout_chn, cells);
    output_ptn(fout_src, patterns);
    */
    output_pt(fout_pt1, pt1_cell_names);
    output_pt(fout_pt2, pt2_cell_names);
    output_rpt(fout_rpt, ans);
    end = time(NULL);
    /*cout << "p1:" << pt1_cell_names.size();
    cout << " p2:" << pt2_cell_names.size();
    cout << " total:" << pt1_cell_names.size() + pt2_cell_names.size() << endl;
    cout << cells.size() << ',' << input_cell.size() << endl;*/
    double diff = difftime(end, start);
    cout << diff << " sec" << endl;
    
    fs_circuit.close();
    fs_co.close();
    fout_pt1.close();
    fout_pt2.close();
    fout_rpt.close();
    return 0; 
} 
pair<double, double> solver(unordered_map<string, Wire> &wires, unordered_map<string, vector<string>> &cells,
 unordered_map<string, vector<string>> &input_cells, unordered_set <string> &pt1_cell_names, unordered_set <string> &pt2_cell_names){
    double cost = INT32_MAX, ratio = 0;
    priority_queue<pair<int, string>, vector<pair<int, string>>, less<pair<int, string>> > q;
    unordered_set<string> visited; 
    unordered_set<string> visited_wire; 
    unordered_set <string> temp_names;
    double total_cell = cells.size();
    double cur_num = 0;
    double temp_cost = 0, temp_ratio = 0;
    unordered_set<string> temp_visited_wire; 
    for (auto input : input_cells){
        string connection = input.second[0];
        double cur_cost = 0;
        if (visited.find(connection) == visited.end()){
            visited.insert(connection);
           
            for (auto w : cells[connection]){
                if (temp_visited_wire.find(w) == temp_visited_wire.end()){
                    cur_cost += wires[w].cost;
                    temp_visited_wire.insert(w);
                }
            }
            q.push(make_pair(cur_cost,connection));
            temp_cost += cur_cost;
            cur_num ++;
        }
        /*for (auto connection : input.second){
            if (visited.find(connection) == visited.end()){
                visited.insert(connection);
                temp_names.insert(connection);
                q.push(connection);
                cur_num ++;
            }
        }*/
    }
    while (q.size()){
        temp_visited_wire.clear();
        string cur = q.top().second;
        q.pop();
        //cout << cur << ":\n";
        for (auto w : cells[cur]){
            if (visited_wire.find(w) == visited_wire.end()){
                visited_wire.insert(w);
                temp_cost -= wires[w].cost;
                for (auto c : wires[w].connections){
                    double cur_cost = 0;
                    if (visited.find(c) == visited.end()){
                        visited.insert(c);
                        //cout << "     " << c << ":";
                        for (auto w_reverse : cells[c]){
                            //cout << w << " ";
                            if (temp_visited_wire.find(w_reverse) == temp_visited_wire.end() && visited_wire.find(w_reverse) == visited_wire.end()){
                                bool not_all_visited = false; 
                                for (auto c_reverse: wires[w_reverse].connections){
                                    if (visited.find(c_reverse) == visited.end()){
                                        not_all_visited = true;
                                        break;
                                    }
                                }
                                if (!not_all_visited){
                                    visited_wire.insert(w_reverse);
                                    temp_cost -= wires[w_reverse].cost;
                                }else{
                                    temp_visited_wire.insert(w_reverse);
                                    cur_cost += wires[w_reverse].cost;
                                }
                            }
                        }
                        temp_cost += cur_cost;
                        q.push(make_pair(cur_cost,c));
                        //cout << endl;
                        cur_num ++;
                    }
                }
            }
        }
    
        temp_ratio = cur_num / (total_cell - cur_num);
        // << "cost:" << temp_cost << ", ratio:" << temp_ratio << endl;
        if (temp_ratio > 1.05) break;
        if (temp_cost < cost &&  temp_ratio > 0.95){
            cost = temp_cost;
            ratio = temp_ratio;
            pt1_cell_names = visited;
        }
    }
    cout << cost * 0.7 << "," << ratio << endl;
    /*cout << visited.size() << endl;
    cout << pt1_cell_names.size() << "," << total_cell - pt1_cell_names.size() << endl;*/
    for (auto cell : cells){
        if (pt1_cell_names.find(cell.first) == pt1_cell_names.end()){
            pt2_cell_names.insert(cell.first);
        }
    }
    /*for (auto s : pt1_cell_names){
        cout << s << " ";
    }
    cout << endl;*/
    /*while (!q.empty())
    {
        std::cout << q.front() <<"\n";
        q.pop();
    }*/
    return make_pair(cost, ratio);
}
void scan_circuit(fstream &fs, unordered_map<string, Wire> &wires, unordered_map<string, vector<string>> &cells,
 unordered_map<string, vector<string>> &input_cells){
    string command;
    unordered_set <string> wire_names;
    while (fs >> command){
        if (command == "input"){
            string s;
            while (getline(fs, s)){
                if (s == "" || s.substr(2,6) == "output") break;
                s.erase(std::remove(s.begin(), s.end(), ';'), s.end());
                s.erase(std::remove(s.begin(), s.end(), ','), s.end());
                //replace(s.begin(), s.end(),';',' ');
                //replace(s.begin(), s.end(),',',' ');
                for (string input : split(s, " ")){
                    if (input != "") {
                        vector<string> connections;
                        input_cells[input] = connections;
                    }
                }
            }
            /*for (auto c: input_cells){
                cout << c << " ";
            }
            cout << endl;*/
        }
        if (command == "wire"){
            string s;
            while (getline(fs, s)){
                if (s == "") break;
                s.erase(std::remove(s.begin(), s.end(), ';'), s.end());
                s.erase(std::remove(s.begin(), s.end(), ','), s.end());
                //replace(s.begin(), s.end(),';',' ');
                //replace(s.begin(), s.end(),',',' ');
                for (string wire : split(s, " ")){
                    if (wire != "") {
                        Wire w;
                        wires[wire] = w;
                        wire_names.insert(wire);
                    }
                }
            }
            while (getline(fs, s)){
                if ( s == "endmodule") break;
                s.erase(s.begin(), s.begin()+2);
                vector<string> connections;
                string name;
                vector<string> temp = split(s, " ");
                name = temp[1];
                for (auto c : temp) {
                    if (c[0] == '.'){
                        string wire = split(c, "(")[1];
                        wire.erase(std::remove(wire.begin(), wire.end(), ')'), wire.end());
                        wire.erase(std::remove(wire.begin(), wire.end(), ','), wire.end());
                        if (wire_names.find(wire) != wire_names.end()){
                            connections.push_back(wire);
                            wires[wire].connections.push_back(name);
                        }
                        if (input_cells.find(wire) != input_cells.end()){
                            input_cells[wire].push_back(name);
                        }
                    }
                }
                
                cells[name] = connections;
                //cout << name << endl;
            }
        }else{
            string dummy;
            getline(fs, dummy);
        } 
    }
    /*for (auto c : input_cells){
        cout << c.first << ":";
        for (auto s: c.second){
            cout << s << " "; 
        }
        cout << endl;
    }*/
    /*for (auto c : wires){
        cout << c.first << ":";
        for (auto s: c.second.connections){
            cout << s << " "; 
        }
        cout << endl;
    }*/
    /*for (string c : wire_names) {
        if (c == "stato__1__")
        {cout << c << endl;}
    }*/
}
void scan_co(fstream &fs, unordered_map<string, Wire> &wires){
    string wire_name;
    double cost;
    while( fs >> wire_name >> cost){
        wires[wire_name].cost = cost;
    }
    /*for (auto c : wires){
        cout << c.first << ":" << c.second.cost << ":";
        for (auto s: c.second.connections){
            cout << s << " "; 
        }
        cout << endl;
    }*/
}
void output_rpt(fstream &fs, pair<double, double> ans)
{
    fs << "Overall cutting overhead = " << ans.first * 0.7 << endl
       << "Partition ratio = " << ans.second << endl;
}
void output_pt(fstream &fs,  unordered_set <string> cell_names)
{
    vector <string> ans;
    for (auto c : cell_names) {
        ans.push_back(c);
    }
    sort(ans.begin(),ans.end());
    for (auto a: ans) fs << a << endl;
}
vector<string>  split(const string& str,const string& delim) { 
	vector<string> res;
	if("" == str) return  res;
	
	string strs = str + delim; 
	size_t pos;
	size_t size = strs.size();
 
	for (int i = 0; i < size; ++i) {
		pos = strs.find(delim, i); 
		if( pos < size) { 
			string s = strs.substr(i, pos - i);
			res.push_back(s);
			i = pos + delim.size() - 1;
		}
		
	}
	return res;	
}