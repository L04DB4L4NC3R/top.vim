# top.vim
A simple vim plugin to convert the output of the top command into a markdown report format


---

## Keybindings


| Mode | Mapping | Action |
|:----:|:-------:|:------:|
| Normal | tpmd | Convert to markdown |
| Normal | [num]tpmt | Print top 'num' lines (>= 8) |

---

## Demo

**Before**:

```
top - 00:25:34 up 15:32,  1 user,  load average: 0.62, 0.82, 0.89
Tasks: 368 total,   1 running, 276 sleeping,   0 stopped,   0 zombie
%Cpu(s):  5.2 us,  1.5 sy,  0.1 ni, 92.3 id,  0.8 wa,  0.0 hi,  0.1 si,  0.0 st
KiB Mem : 16262016 total,  9164476 free,  1610276 used,  5487264 buff/cache
KiB Swap:        0 total,        0 free,        0 used. 14080740 avail Mem 

  PID USER      PR  NI    VIRT    RES    SHR S  %CPU %MEM     TIME+ COMMAND
15158 angad     20   0   57824   4188   3428 R  12.5  0.0   0:00.02 top
 2795 angad     20   0  662896  61704  33972 S   6.2  0.4   0:39.40 x-terminal-emul
    1 root      20   0  225944   9512   6544 S   0.0  0.1   0:42.48 systemd
    2 root      20   0       0      0      0 S   0.0  0.0   0:00.07 kthreadd
    4 root       0 -20       0      0      0 I   0.0  0.0   0:00.00 kworker/0:0H
    6 root       0 -20       0      0      0 I   0.0  0.0   0:00.00 mm_percpu_wq
    7 root      20   0       0      0      0 S   0.0  0.0   0:00.12 ksoftirqd/0
    8 root      20   0       0      0      0 I   0.0  0.0   0:30.52 rcu_sched
    9 root      20   0       0      0      0 I   0.0  0.0   0:00.00 rcu_bh
```

**After**: 

* top - 00:26:50 up 15:33
	*  1 user
	*  load average: 0.34
	* 0.69
	* 0.84
* Tasks: 370 total
	*   1 running
	* 279 sleeping
	*   0 stopped
	*   0 zombie
* %Cpu(s):  5.2 us
	*  1.5 sy
	*  0.1 ni
	* 92.3 id
	*  0.8 wa
	*  0.0 hi
	*  0.1 si
	*  0.0 st
* KiB Mem : 16262016 total
	*  9118020 free
	*  1652820 used
	*  5491176 buff/cache
* KiB Swap:
	* 0 total
	* 0 free
	* 0 used. 14034404 avail Mem 

|PID|USER|PR|NI|VIRT|RES|SHR|S|%CPU|%MEM|TIME+|COMMAND|
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
|15353|angad|20|0|57824|4240|3476|R|12.5|0.0|0:00.02|top|
|15312|angad|20|0|273360|34332|12680|S|6.2|0.2|0:00.24|vim|
|1|root|20|0|225944|9512|6544|S|0.0|0.1|0:42.51|systemd|
|2|root|20|0|0|0|0|S|0.0|0.0|0:00.07|kthreadd|
|4|root|0|-20|0|0|0|I|0.0|0.0|0:00.00|kworker/0:+|
|6|root|0|-20|0|0|0|I|0.0|0.0|0:00.00|mm_percpu_+|
|7|root|20|0|0|0|0|S|0.0|0.0|0:00.12|ksoftirqd/0|
|8|root|20|0|0|0|0|I|0.0|0.0|0:30.62|rcu_sched|
|9|root|20|0|0|0|0|I|0.0|0.0|0:00.00|rcu_bh|

