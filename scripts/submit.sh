#!/bin/bash
curl 'https://leetcode.com/problems/letter-combinations-of-a-phone-number/submit/' -H 'Cookie: Hm_lvt_d2280bc80bc9bf91fc156fa8337ea3af=1439546931,1439864982; PHPSESSID=90q64abzwe8b9yqa47aeq8nl5j36rai6; __atuvc=0%7C43%2C1%7C44%2C8%7C45%2C28%7C46%2C7%7C47; csrftoken=bdhouWmMO5YgPndOL0LCGEv5LDCbDxTs; _ga=GA1.2.86188942.1433388442' -H 'Origin: https://leetcode.com' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: zh-CN,zh;q=0.8,en;q=0.6,en-US;q=0.4,zh-TW;q=0.2,ja;q=0.2' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Referer: https://leetcode.com/problems/letter-combinations-of-a-phone-number/' -H 'X-CSRFToken: bdhouWmMO5YgPndOL0LCGEv5LDCbDxTs' -H 'X-Requested-With: XMLHttpRequest' -H 'Connection: keep-alive' -H 'DNT: 1' --data $'csrfmiddlewaretoken=bdhouWmMO5YgPndOL0LCGEv5LDCbDxTs&question_id=17&judge_type=large&lang=javascript&typed_code=%2F**%0D%0A+*+%40param+%7Bstring%7D+digits%0D%0A+*+%40return+%7Bstring%5B%5D%7D%0D%0A+*%2F%0D%0Avar+letterCombinations+%3D+function(digits)+%7B%0D%0A++\'use+strict\'%0D%0A++if+(digits.length+%3D%3D+0+%7C%7C+digits.match(%2F0%2Fi))%09return+%5B%5D%0D%0A%09%0D%0A++let+map+%3D+new+Map()%0D%0A%09%09%0D%0A++map.set(\'1\'%2C+%5B\'*\'%5D)%0D%0A++map.set(\'2\'%2C+%5B\'a\'%2C+\'b\'%2C+\'c\'%5D)%0D%0A++map.set(\'3\'%2C+%5B\'d\'%2C+\'e\'%2C+\'f\'%5D)%0D%0A++map.set(\'4\'%2C+%5B\'g\'%2C+\'h\'%2C+\'i\'%5D)%0D%0A++map.set(\'5\'%2C+%5B\'j\'%2C+\'k\'%2C+\'l\'%5D)%0D%0A++map.set(\'6\'%2C+%5B\'m\'%2C+\'n\'%2C+\'o\'%5D)%0D%0A++map.set(\'7\'%2C+%5B\'p\'%2C+\'q\'%2C+\'r\'%2C+\'s\'%5D)%0D%0A++map.set(\'8\'%2C+%5B\'t\'%2C+\'u\'%2C+\'v\'%5D)%0D%0A++map.set(\'9\'%2C+%5B\'w\'%2C+\'x\'%2C+\'y\'%2C+\'z\'%5D)%0D%0A%09%09%0D%0A++let+resultArr+%3D+map.get(digits%5B0%5D)%0D%0A++++%2C+len+%3D+digits.length%0D%0A%0D%0A++for+(let+i+%3D+1%3B+i+%3C+len%3B+%2B%2Bi)+%7B%0D%0A++++let+newVal+%3D+map.get(digits%5Bi%5D)%0D%0A++++++%2C+arr+%3D+resultArr%0D%0A++++++%2C+vLen+%3D+newVal.length%0D%0A%0D%0A++++resultArr+%3D+%5B%5D%0D%0A++++arr.forEach(function(originStr)+%7B%0D%0A++++for+(let+j+%3D+0%3B+j+%3C+vLen%3B+%2B%2Bj)%09%7B%0D%0A++++++resultArr.push(originStr+%2B+newVal%5Bj%5D)%0D%0A++++++%7D%0D%0A++++%7D)%09%0D%0A++%7D%0D%0A%09%0D%0A++return+resultArr%0D%0A%7D&data_input=%22%22' --compressed