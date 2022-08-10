# frozen_string_literal: true

module Leetcoder
  module Helpers
    module Logger
      def log_message(key, **args)
        puts message(key, args)
      end

      private

      def message(key, args)
        case key
        when :skip
          "Skipping Download for #{args[:question_dir]}. Already Exist."
        when :download
          "Downloading sumbimissions for #{args[:question_dir]}"
        when :initiating_download
          "Starting download in: #{args[:dir]} .."
        when :completed_download
          "\nDownload completed!"
        end
      end
    end
  end
end
