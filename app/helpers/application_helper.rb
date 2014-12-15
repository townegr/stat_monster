module ApplicationHelper
  def player_stats
    [
      "pass_comp",
      "pass_yds",
      "pass_td",
      "pass_int",
      "rush_att",
      "rush_yds",
      "rush_td",
      "rec_tgt",
      "receptions",
      "rec_yds",
      "rec_td",
      "ret_yds",
      "ret_td",
      "misc_2pt",
      "fum_lost"
    ]
  end

  # def to_integer
  #   if self.class == Array
  #     self.map {|str| str.to_i}
  #   else
  #     self.to_i
  #   end
  # end
end

