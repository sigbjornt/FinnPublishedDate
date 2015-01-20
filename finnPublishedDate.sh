####constants###
url="http://www.finn.no/finn/realestate/homes/object?finnkode="
start_element="<span class=\"last-changed-date\">"
end_element="<\/span>"
default_items=10

###input parameters####
#Parameter #1: the "finnkode"
object_id=$1

#Scan this many objects on either side. Ads may be deleted, so scan several.
#This is a optional parameter
steps=${2:-$default_items}



#####Calculate ranges
start=$(($object_id - $steps))
end=$(($object_id + $steps))

#####Loop over the sequence
for i in $(seq $start 1 $end); do
        #get the html,  use sed to find the "last changed" span and cut the  extra lines
        str=$(curl -L  -s $url$i | sed -n "/$start_element/, /$end_element/p"  | sed '1d;$d')
        #Print extra info for the primary object
        if [ "$object_id" -eq "$i" ]; then echo  "Your item ($i)->       $str";
        #Print the last changed date if found
        elif [ ! -z "$str" -a "$str" != " " ]; then echo "Item $i was last updated $str";fi
done
