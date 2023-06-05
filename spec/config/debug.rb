if DEBUGGING
  if DEBUG_IDE
    # See: https://github.com/ruby-debug/ruby-debug-ide#start-debugging-session
    # TODO: Figure out how to make this work? Or perhaps the pry integration is sufficient?
  else
    require "pry-suite"
  end
elsif DEBUG_JRUBY
  if DEBUG_IDE
    # See: https://github.com/ruby-debug/ruby-debug-ide#start-debugging-session
    # TODO: Figure out how to make this work? Or perhaps the pry integration is sufficient?
  else
    require "pry-debugger-jruby"
  end
end
