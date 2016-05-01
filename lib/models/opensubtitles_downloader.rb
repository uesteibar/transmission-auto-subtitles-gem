class OpensubtitlesDownloader
  def subtitles_for torrent
    system "getsub -a #{torrent.download_dir}"
  end
end
