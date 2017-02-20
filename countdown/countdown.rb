#!/usr/bin/env ruby

require "curses"
require "json"
require_relative "display"

include Curses

DEFAULT_PLAYLIST = File.join(File.dirname(__FILE__), "playlist.json")

def track_length_in_seconds(length)
  minutes, seconds = length.match(/(\d+):(\d+)/).captures
  minutes.to_i * 60 + seconds.to_i
end

Curses.noecho
Curses.init_screen
Curses.start_color
Curses.init_pair(COLOR_RED, COLOR_RED, COLOR_BLACK)

playlist_file = ARGV[0] || DEFAULT_PLAYLIST

playlist = JSON.parse(File.open(playlist_file, &:read)).shuffle

playlist.each do |track|
  total_time = track_length_in_seconds(track["length"])

  total_time.downto(0).each do |time|
    Curses.clear
    Curses.setpos(0, 0)

    display = Display.new(time)
    Curses.attron(color_pair(COLOR_RED) | A_NORMAL) do
      Curses.addstr("#{track["artist"]} - #{track["name"]}\n")
      Curses.addstr(display.to_s)
      Curses.addstr("\n\n")
    end
    Curses.refresh

    sleep(1)
  end
end
