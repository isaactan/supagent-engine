class Supaagent < ActiveRecord::Base
    #Avatar uploader using carrier wave
    mount_uploader :idimage, IdimageUploader
    validates_presence_of :applicationid, :message => "Please insert your Application ID"
    validates_presence_of :idnumber, :message => "Please insert your ID number"
    validates_presence_of :name, :message => "Please insert your name"
    validates_presence_of :email, :message => "Please insert your email"
    validates_presence_of :idimage, :message => "Please upload a photo of your Photo ID"
    validates_presence_of :bankaccount, :message => "Bank account number is required"
    validates_presence_of :bankname, :message => "Bank Name is required"
    validates_presence_of :bankaddress, :message => "Bank Address is required"
    validates_presence_of :bankswift, :message => "Bank SWIFT code is required"
end
