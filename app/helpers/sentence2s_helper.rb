module Sentence2sHelper
    def choose_new_or_edit_2
        if action_name == 'new' || action_name == 'confirm'
            confirm_sentence2s_path
        elsif action_name == 'edit'
            sentence2_path
        end
    end
end