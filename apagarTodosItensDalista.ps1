$site=get-spsite utr

$web=$site.rootweb

$list=web.lists["title ou ID"]

$items=$list.Items

while ($list.ItemCount -gt 0) {

$list.Items[0].Delete() 
}
