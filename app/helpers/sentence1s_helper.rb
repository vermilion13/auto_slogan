module Sentence1sHelper
    def choose_new_or_edit_1
        if action_name == 'new' || action_name == 'confirm'
            confirm_sentence1s_path
        elsif action_name == 'edit'
            sentence1_path
        end
    end
end