# Description:
# Ericlink watches chat for mentions of ticket (EW), follow-ups (EWF), Bugs (BZ) and Knowledge base (KB) and gives you the Ericware link
#
# Dependencies:
# None
# 
# Configuration:
# None
# 
# Commands:
# EricLink - Listens for EW, EWF, BZ, and KB mentions and returns Ericware link
# 
# Notes
#  For access to Intelerad's internal systems
# 
# Author:
#  Tristan Rogers
#
#
#
search = "https://support.intelerad.com/ew/redirect.php?s="

module.exports = (robot) ->
  # waits for the string EW###### to occur
	robot.hear /ew[1-9][0-9]{5}|ewf[1-9][0-9]{6}|bz[1-9][0-9]{4}|kb[1-9][0-9]{2,3}/ig, (msg) ->

		msg.send "#{search}#{msg.match[0]}"

###                    WORK IN PROGRESS
#                    
#                        if msg.match[1]  
#                            #msg.send "#{search}#{msg.match[0]}"
#                            msg.send "#{search}#{msg.match[1]}"
#                    
#                        else
#  msg.send "#{search}#{msg.match[0]}"
###

#To Do
#
# 1. Can only matches multiple instances (global match /g) but msg.send returns all matches in one   
#                    
