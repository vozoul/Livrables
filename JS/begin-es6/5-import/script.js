//5-1 Import

import {hello} from './functions.js'
import nyan from './functions.js'
import * as ope from './math.js'

hello()
// nyan()

// 5-2 Export
const [a, b] = [7, 9]

console.log(ope.sub(a,b))
console.log(ope.divide(a,b))
console.log(ope.pow(a,b))
console.log(ope.sum(a,b))