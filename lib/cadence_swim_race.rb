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
      { style: 'fly', distance: 50 },
      { style: 'back', distance: 100 },
      { style: 'breast', distance: 100 },
      { style: 'free', distance: 100 },
      { style: 'free', distance: 200 },
      { style: 'free', distance: 400 }
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
      { meet: 'AQUA 7 Meet NHAC vs STJJ', date: '2017/12/10', course: 25, style: 'free', distants: 100, time: '1:25.87', pos: 3 },
      { meet: 'AQUA 7 Meet NHAC vs STJJ', date: '2017/12/10', course: 25, style: 'back', distants: 100, time: '1:42.26', pos: 1 },
      { meet: 'AQUA 7 Meet NHAC vs STJJ', date: '2017/12/10', course: 25, style: 'fly', distants: 50, time: '51.34', pos: 3 },
      { meet: 'Aqua 7 STJJ vs AAST', date: '2018/1/13', course: 25, style: 'free', distants: 50, time: '36.86', pos: 1 },
      { meet: 'Aqua 7 STJJ vs AAST', date: '2018/1/13', course: 25, style: 'free', distants: 400, time: '7:02.72', pos: 4 },
      { meet: 'Aqua 7 STJJ vs AAST', date: '2018/1/13', course: 25, style: 'back', distants: 100, time: '1:38.67', pos: 2 },
      { meet: 'Victor Davis Invitational', date: '2018/1/21', course: 50, style: 'free', distants: 50, time: '37.33', pos: 28 },
      { meet: 'Victor Davis Invitational', date: '2018/1/21', course: 50, style: 'free', distants: 200, time: '3:16.56', pos: 17 },
      { meet: 'Victor Davis Invitational', date: '2018/1/21', course: 50, style: 'back', distants: 50, time: '45.06', pos: 16 },
      { meet: 'Victor Davis Invitational', date: '2018/1/21', course: 50, style: 'back', distants: 200, time: '3:38.95', pos: 14 },
      { meet: '2018 Western Region SC Champs', date: '2018/2/3', course: 25, style: 'free', distants: 50, time: '35.20', pos: 26 },
      { meet: '2018 Western Region SC Champs', date: '2018/2/3', course: 25, style: 'free', distants: 100, time: '1:22.12', pos: 45 },
      { meet: '2018 Western Region SC Champs', date: '2018/2/3', course: 25, style: 'free', distants: 200, time: '3:06.28', pos: 45 },
      { meet: '2018 Western Region SC Champs', date: '2018/2/3', course: 25, style: 'back', distants: 50, time: '43.07', pos: 23 },
      { meet: 'Aqua 7 STJJ vs WAAC', date: '2018/2/10', course: 25, style: 'free', distants: 100, time: '1:23.46', pos: 3 },
      { meet: 'Aqua 7 STJJ vs WAAC', date: '2018/2/10', course: 25, style: 'back', distants: 100, time: '1:38.41', pos: 3 },
      { meet: 'Aqua 7 STJJ vs WAAC', date: '2018/2/10', course: 25, style: 'fly', distants: 50, time: '44.50', pos: 1 },
      { meet: 'WAC Spring Invitational', date: '2018/3/24', course: 50, style: 'free', distants: 50, time: '36.02', pos: 10 },
      { meet: 'WAC Spring Invitational', date: '2018/3/24', course: 50, style: 'free', distants: 100, time: '1:25.34', pos: 16 },
      { meet: 'WAC Spring Invitational', date: '2018/3/24', course: 50, style: 'free', distants: 200, time: '3:16.18', pos: 13 },
      { meet: 'WAC Spring Invitational', date: '2018/3/24', course: 50, style: 'back', distants: 50, time: '45.05', pos: 7 },
      { meet: 'WAC Spring Invitational', date: '2018/3/24', course: 50, style: 'back', distants: 100, time: '1:39.12', pos: 11 },
      { meet: 'WAC Spring Invitational', date: '2018/3/24', course: 50, style: 'breast', distants: 50, time: '58.48', pos: 19 },
      { meet: 'Aqua 7 STJJ @ ISS', date: '2018/4/29', course: 25, style: 'back', distants: 50, time: '44.34', pos: 1 },
      { meet: 'Aqua 7 STJJ @ ISS', date: '2018/4/29', course: 25, style: 'fly', distants: 50, time: '50.11', pos: 2 },
      { meet: 'Aqua 7 Finals', date: '2018/5/6', course: 25, style: 'free', distants: 50, time: '37.22', pos: 8 },
      { meet: 'Aqua 7 Finals', date: '2018/5/6', course: 25, style: 'back', distants: 50, time: '43.34', pos: 8 },
      { meet: 'Aqua 7 Finals', date: '2018/5/6', course: 25, style: 'fly', distants: 50, time: '47.08', pos: 10 },
      { meet: '2018 Western Region LC Championships', date: '2018/6/10', course: 50, style: 'free', distants: 50, time: '36.33', pos: 68 },
      { meet: '2018 Western Region LC Championships', date: '2018/6/10', course: 50, style: 'back', distants: 50, time: '1:35.88', pos: 55 },
      { meet: 'Flying Free 2018', date: '2018/10/20', course: 25, style: 'free', distants: 50, time: '34.38', pos: 2 },
      { meet: 'Flying Free 2018', date: '2018/10/20', course: 25, style: 'back', distants: 50, time: '39.62', pos: 3 },
      { meet: 'Flying Free 2018', date: '2018/10/20', course: 25, style: 'breast', distants: 50, time: '51.99', pos: 13 },
      { meet: 'Flying Free 2018', date: '2018/10/20', course: 25, style: 'fly', distants: 50, time: '40.83', pos: 2 },
      { meet: 'Expressway Lincoln Fall Invitational', date: '2018/11/18', course: 25, style: 'free', distants: 50, time: '33.09', pos: 5 },
      { meet: 'Expressway Lincoln Fall Invitational', date: '2018/11/18', course: 25, style: 'free', distants: 200, time: '2:50.40', pos: 5 },
      { meet: 'Expressway Lincoln Fall Invitational', date: '2018/11/18', course: 25, style: 'back', distants: 100, time: '1:29.34', pos: 10 },
      { meet: 'Aqua 7 STJJ vs NHAC', date: '2018/12/8', course: 25, style: 'free', distants: 100, time: '1:13.69', pos: 1 },
      { meet: 'Aqua 7 STJJ vs NHAC', date: '2018/12/8', course: 25, style: 'back', distants: 100, time: '1:25.60', pos: 1 },
      { meet: 'Aqua 7 STJJ vs NHAC', date: '2018/12/8', course: 25, style: 'fly', distants: 50, time: '42.73', pos: 1 }
    ]
  end

  def self.by(distance, style)
    all.select { |race| race[:distants] == distance && race[:style] == style }
  end
end