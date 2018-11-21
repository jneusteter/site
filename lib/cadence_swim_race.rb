class CadenceSwimRace
  def self.medal_count(position)
    all.select { |race| race[:pos] == position }.count
  end

  def self.race_styles
    [
      { style: 'back', distance: 25 },
      { style: 'breast', distance: 25 },
      { style: 'fly', distance: 25 },
      { style: 'free', distance: 25 },
      { style: 'back', distance: 50 },
      { style: 'free', distance: 50 },
      { style: 'breast', distance: 50 },
      { style: 'back', distance: 100 },
      { style: 'breast', distance: 100 },
      { style: 'free', distance: 100 },
      { style: 'free', distance: 200 }
    ]
  end

  def self.all
    [
      { meet: 'Aces Fall Invitational', date: '2016/11/20', course: 25, style: 'back', distants: 50, time: '53.44', pos: 18 },
      { meet: 'ISS Acapulco Invitational', date: '2016/12/3', course: 25, style: 'free', distants: 50, time: '46.48', pos: 2 },
      { meet: 'ISS Acapulco Invitational', date: '2016/12/3', course: 25, style: 'back', distants: 100, time: '1:58.27', pos: 3 },
      { meet: 'ISS Acapulco Invitational', date: '2016/12/3', course: 25, style: 'breast', distants: 50, time: '1:07.54', pos: 5 },
      { meet: 'Aqua 7 STJJ with NHAC & ISS', date: '2016/12/10', course: 25, style: 'free', distants: 50, time: '42.45', pos: 6 },
      { meet: 'Aqua 7 STJJ with NHAC & ISS', date: '2016/12/10', course: 25, style: 'back', distants: 50, time: '49.55', pos: 3 },
      { meet: 'Aqua 7 STJJ with NHAC & ISS', date: '2016/12/10', course: 25, style: 'breast', distants: 50, time: '1:09.52', pos: 9 },
      { meet: 'Aqua 7 STJJ with ISS & WRMS', date: '2017/1/11', course: 25, style: 'free', distants: 100, time: '1:38.80', pos: 4 },
      { meet: 'Aqua 7 STJJ with ISS & WRMS', date: '2017/1/11', course: 25, style: 'back', distants: 100, time: '1:51.21', pos: 2 },
      { meet: 'Aqua 7 STJJ with ISS & WRMS', date: '2017/1/11', course: 25, style: 'breast', distants: 50, time: '1:06.78', pos: 9 },
      { meet: 'Aqua 7 STJJ vs CAJ', date: '2017/1/21', course: 25, style: 'free', distants: 100, time: '1:43.12', pos: 1 },
      { meet: 'Aqua 7 STJJ vs CAJ', date: '2017/1/21', course: 25, style: 'back', distants: 100, time: '1:50.66', pos: 1 },
      { meet: 'Aqua 7 STJJ vs CAJ', date: '2017/1/21', course: 25, style: 'breast', distants: 50, time: '1:05.39', pos: 8 },
      { meet: 'NHAC and STJJ at AAST', date: '2017/3/25', course: 25, style: 'free', distants: 50, time: '42.02', pos: 7 },
      { meet: 'NHAC and STJJ at AAST', date: '2017/3/25', course: 25, style: 'free', distants: 200, time: '3:37.50', pos: 3 },
      { meet: 'NHAC and STJJ at AAST', date: '2017/3/25', course: 25, style: 'back', distants: 50, time: '51.68', pos: 3 },
      { meet: 'Aqua 7 vs STJJ', date: '2017/4/2', course: 25, style: 'free', distants: 50, time: '41.57', pos: 3 },
      { meet: 'Aqua 7 vs STJJ', date: '2017/4/2', course: 25, style: 'back', distants: 50, time: '50.36', pos: 4 },
      { meet: 'Aqua 7 vs STJJ', date: '2017/4/2', course: 25, style: 'breast', distants: 100, time: '2:12.30', pos: 4 },
      { meet: 'WAC Spring Invitational', date: '2017/4/7', course: 50, style: 'free', distants: 50, time: '41.08', pos: 28 },
      { meet: 'WAC Spring Invitational', date: '2017/4/7', course: 50, style: 'free', distants: 100, time: '1:41.73', pos: 47 },
      { meet: 'WAC Spring Invitational', date: '2017/4/7', course: 50, style: 'free', distants: 200, time: '3:28.47', pos: 27 },
      { meet: 'WAC Spring Invitational', date: '2017/4/7', course: 50, style: 'back', distants: 50, time: '51.03', pos: 22 },
      { meet: 'WAC Spring Invitational', date: '2017/4/7', course: 50, style: 'back', distants: 100, time: '1:51.36', pos: 27 },
      { meet: 'WAC Spring Invitational', date: '2017/4/7', course: 50, style: 'breast', distants: 50, time: '1:05.12', pos: 30 },
      { meet: 'Aqua 7 Championship', date: '2017/5/7', course: 25, style: 'free', distants: 50, time: '39.90', pos: 9 },
      { meet: 'Aqua 7 Championship', date: '2017/5/7', course: 25, style: 'free', distants: 100, time: '1:35.03', pos: 8 },
      { meet: 'Aqua 7 Championship', date: '2017/5/7', course: 25, style: 'back', distants: 50, time: '46.73', pos: 2 },
      { meet: 'Flying Free Invitational', date: '2017/10/21', course: 25, style: 'free', distants: 25, time: '17.05', pos: 2 },
      { meet: 'Flying Free Invitational', date: '2017/10/21', course: 25, style: 'free', distants: 100, time: '1:32.64', pos: 6 },
      { meet: 'Flying Free Invitational', date: '2017/10/21', course: 25, style: 'back', distants: 25, time: '20.75', pos: 1 },
      { meet: 'Flying Free Invitational', date: '2017/10/21', course: 25, style: 'breast', distants: 25, time: '25.82', pos: 8 },
      { meet: 'Flying Free Invitational', date: '2017/10/21', course: 25, style: 'fly', distants: 25, time: '19.35', pos: 1 },
      { meet: 'Aces Fall Invitational', date: '2017/11/18', course: 25, style: 'free', distants: 50, time: '35.95', pos: 12 },
      { meet: 'Aces Fall Invitational', date: '2017/11/18', course: 25, style: 'free', distants: 200, time: '3:15.08', pos: 27 },
      { meet: 'Aces Fall Invitational', date: '2017/11/18', course: 25, style: 'back', distants: 100, time: '1:41.17', pos: 22 },
      { meet: 'Expressway Lincoln Fall Invitational', date: '2018/11/18', course: 25, style: 'free', distants: 50, time: '33.09', pos: 5 },
      { meet: 'Expressway Lincoln Fall Invitational', date: '2018/11/18', course: 25, style: 'free', distants: 200, time: '2:50.40', pos: 5 },
      { meet: 'Expressway Lincoln Fall Invitational', date: '2018/11/18', course: 25, style: 'back', distants: 100, time: '1:29.34', pos: 10 },
    ]
  end

  def self.by(distance, style)
    all.select { |race| race[:distants] == distance && race[:style] == style }
  end
end
