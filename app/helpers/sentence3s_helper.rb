module Sentence3sHelper
    def choose_new_or_edit_3
        if action_name == 'new' || action_name == 'confirm'
            confirm_sentence3s_path
        elsif action_name == 'edit'
            sentence3_path
        end
    end
end