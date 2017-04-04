module.exports = (robot) ->
  robot.hear /HELLO$/i, (msg) ->
        days = ["日", "月", "火", "水", "木", "金", "土"]
        date = new Date
        day = days[date.getDay()]
        time = ""
        person = ""
        switch day
            when "月"
                person = "太郎"
                time = "9:30"
            when "火"
                person = "次郎"
                time = "9:30"
            when "水"
                person = "三郎"
                time = "9:30"
            when "木"
                person = "四郎"
                time = "9:30"
            when "金"
                person = "五郎"
                time = "9:30"
            else 
                msg.send "本日は休日です。"
        msg.send """
                 #{date.getMonth() + 1}月#{date.getDate()}日 #{day}曜日
                 朝会:#{time}
                 本日の担当者:#{person}さん
                 """
