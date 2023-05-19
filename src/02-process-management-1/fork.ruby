if child_pid = fork #子プロセスのpidを返す
  # 親プロセス
  puts "自分: 親プロセス ,親プロセスのPID: #{Process.pid}, 子プロセスのpid: #{child_pid}"
  Process.waitall # 子プロセスの終了を待つ（先に親が終了してしまうと子が残り続ける＝ゾンビプロセス）
	exit! true
else
  # 子プロセス
  puts "自分: 子プロセス ,親プロセスのPID: #{Process.ppid}, 子プロセスのpid: #{Process.pid}"
	exit! true
end
