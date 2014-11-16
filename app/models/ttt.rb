class TTT

  def group_counts
    all_players = Player.all
    groupA = all_players.all(group_assign: "A").count
    groupB = all_players.all(group_assign: "B").count
    groupC = all_players.all(group_assign: "C").count
    groupD = all_players.all(group_assign: "D").count
    groups_counts = {a: groupA, b: groupB, c: groupC, d: groupD }
  end

  def group_min
    group = [self.group_counts.min_by{|key,value| value}].to_h
    group.keys[0].to_s.upcase!
  end



end
