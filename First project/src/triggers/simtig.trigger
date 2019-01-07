trigger simtig on Account (after insert) 
{
    simpletriggerhelper.insertrecord(trigger.new);
}