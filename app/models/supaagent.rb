class Supaagent < ActiveRecord::Base
    #Avatar uploader using carrier wave
    mount_uploader :idimage, IdimageUploader
end
