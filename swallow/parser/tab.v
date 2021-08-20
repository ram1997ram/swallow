module parser
// Original author: Saptak Bhoumik
pub fn tab_handler(mut json Ast,mut code_block Body,right bool,replace_previous bool) Ast{
	if right==false{
		if code_block.tab==1{
			if replace_previous==false{
			json.body.last().left<<code_block
			}
			else{
			json.body.last().left[json.body.last().left.len-1]=code_block
			}
		}
		else{
			panic("$code_block.keyword \n    	 ^ IndentationError: Unable to handle $code_block.tab indents")
		}
	}
	return json
}