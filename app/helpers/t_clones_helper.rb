module TClonesHelper
    def choose_new_or_edit
        if action_name == 'new' || action_name == 'confirm'
            confirm_t_clones_path
        else
            t_clone_path
        end
    end
end
