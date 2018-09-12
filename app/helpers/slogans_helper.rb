module SlogansHelper
    def choose_new_or_edit_s
        if action_name == 'new' || action_name == 'confirm'
            confirm_slogans_path
        elsif action_name == 'edit'
            slogan_path
        end
    end
end