class Supaagent < ActiveRecord::Base
    #Avatar uploader using carrier wave
    mount_uploader :idimage, IdimageUploader
    validates_presence_of :applicationid, :message => "Please insert your Application ID"
    validates_presence_of :idnumber, :message => "Please insert your ID number"
    validates_presence_of :name, :message => "Please insert your name"
    validates_presence_of :email, :message => "Please insert your email"
    validates_presence_of :idimage, :message => "Please upload a photo of your Photo ID"
end
