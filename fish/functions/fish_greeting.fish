function fish_greeting --description "Greeting message on shell session start up"
    status --is-login
    if [ $status != 0 ]
        set_color yellow
        echo -ne "(\_/)  "
        set_color cyan
        echo -ne "OS:      "
        set_color normal
        echo (show_os_name)
        set_color yellow
        echo -ne "(O.o)  "
        set_color cyan
        echo -ne "Compute: "
        set_color normal
        echo (show_host_metrics)
        set_color yellow
        echo -ne "(> <)  "
        set_color cyan
        echo -ne "Built:   "
        set_color normal
        echo hi #(cat ~/.build/date) "["(cat ~/.build/hash)"]"
    end
end

function show_os_name -d "Prints information about host os"
    set --local os_type (uname -s)
    set --local os_name ""
    if [ "$os_type" = "Linux" ]
        set os_name (cat /etc/os-release | grep PRETTY_NAME | cut -d "=" -f2 | sed "s#\"##g")
    else if [ "$os_type" = "Darwin" ]
        set os_name "macOS "(sw_vers -productVersion)
    end
    echo "$os_name"
end

function show_host_metrics -d "Prints information about host os"
    set --local os_type (uname -s)
    set --local host_cpu ""
    set --local host_ram ""
    if [ "$os_type" = "Linux" ]
        set host_cpu_count (grep -c "^processor" /proc/cpuinfo)
        set host_cpu (lscpu | awk '/CPU max MHz/{if($NF+0>1000)printf "%0.1fGHz\n",$NF/1000; else printf "%.1fMHz\n",$NF}')
        set host_ram (awk '/MemTotal/ {printf( "%.f\n", $2 / 1024 / 1024 )}' /proc/meminfo)"GB"
    else if [ "$os_type" = "Darwin" ]
        set host_cpu_count ""
        set host_cpu "N/A"
        set host_ram "N/A GB"
    end
    echo "$host_cpu_count x $host_cpu CPU, $host_ram"
end
