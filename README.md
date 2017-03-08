##### You know how you always wanted to have a clear list of daily temperatures?
##### This is a perfect app for it.
##### All you need to do is input the daily temperature and it will return a list in Celsius and Fahrenheit.
##### The terminal will color in red the hot days, and color in blue the cold days.
#### This way you will always know if it was hot or cold last week.

##### Gems required:
```
gem 'paint'
```
```
gem install terminal-table
```
#### The app further requires a progress bar.
```
class ProgressBar
  def initialize(title)
    @current_step = 1
    @title = title
  end

  attr_accessor :current_step, :title
end
```

### I hope you enjoyed.
