require "rtransmission"
require "./lib/models/opensubtitles_downloader"

class TransmissionAutoSubtitles
  def initialize subtitles_downloader: OpensubtitlesDownloader.new, interval: 10
    @subtitles_downloader = subtitles_downloader
    @interval = interval
  end

  def run
    RTransmission::Client.session do |session|
      loop do
        torrents = RTransmission::Torrent.list(session)
        torrents.each do |torrent|
          if torrent.percent_done == 1
            @subtitles_downloader.subtitles_for(torrent)
            torrent.remove
          end
        end

        sleep @interval
      end
    end
  end
end
