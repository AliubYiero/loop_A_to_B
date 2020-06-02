--[[
1.关于这个函数，普通情况其实用不太到
2.会用到的情况可能会是一些粒子之间的位置转换，在需要用到的时候还是挺实用的
3.或者还有一些别的应用背景，不过我还没想到，有想法的可以和我交流一下
--]]


--[[
1.math.round(num)
2.辅助函数，四舍五入
3.因为lua的math库里没有内置一个四舍五入的函数，所以这里需要自己定义
4.下面的两个函数需要用到这个函数
--]]
function math.round(num)
	local f = math.floor(num)
	if (num == f) or (num % 2.0 == 0.5) then
		return f
	else 
		return math.floor(num+0.5)
	end
end
--[[
1.Yuint_judge_loop_A_to_B(tbl_1_num,tbl_2_num)
2.重复行(行数为tbl_1_num输入的数值)，并输出一个(c_j=1,tbl_2_num)计数值
3.tbl_2_num规定输出(c_j)的范围，tbl_1_num规定重复行的行数
--]]
function Yuint_judge_loop_A_to_B(tbl_1_num,tbl_2_num)
	maxloop(tbl_1_num)												--重复行
	local numa = tbl_1_num
	local numb = tbl_2_num
		if j == 1 then 												--规定第一和最后输出
			c_j = 1
		elseif j == numa then
			c_j = numb
		else
			if numa > numb then										--判断并输出值
				c_j = math.round(j*((numb-1)/numa)+1)
			elseif numa < numb then
				c_j = math.round(j*((numb-1)/numa))
			else
				c_j = j 
			end
		end
	return c_j														--输出
end



--[[
1.Yuint_maxloop_setb_witha(tbl_1_num,tbl_2_num)
2.重复行(行数为tbl_1_num输入的数值)，并储存一个(c_j=1,tbl_2_num)计数值和总行数(max_c_j)
3.tbl_2_num规定输出(c_j)的范围，tbl_1_num规定重复行的行数
4.和上面的函数结构是一样的，不过不直接输出值，而是将值储存，后面需要再进行调用
5.可以理解为maxloop(tbl_1_num)，然后储存的c_j∈[1,tbl_2_num](相当于j)，储存的max_c_j=maxj
--]]
function Yuint_maxloop_setb_witha(tbl_1_num,tbl_2_num)
	maxloop(tbl_1_num)
	local numa = tbl_1_num
	local numb = tbl_2_num
	max_c_j = maxj
		if j == 1 then 
			c_j = 1
		elseif j == numa then
			c_j = numb
		else
			if numa > numb then
				c_j = math.round(j*((numb-1)/numa)+1)
			elseif numa < numb then
				c_j = math.round(j*((numb-1)/numa))
			else
				c_j = j 
			end
		end
	return ""
end



--[[
1.Yuint_judge_loop_A_to_B(tbl_1_num,tbl_2_num)
2.运用了Yutils的math库，所以不用自己去添加round的函数了，但是需要先装Yutils库
3.和第二个函数一样的输出
--]]
function Yuint_judge_loop_A_to_B(tbl_1_num,tbl_2_num)
	maxloop(tbl_1_num)
	local numa = tbl_1_num
	local numb = tbl_2_num
		if j == 1 then 
			c_j = 1
		else
			c_j = _G.Yutils.math.trim(_G.Yutils.math.round(j*(numb/numa)),1,numb)
		end
	return c_j
end



--[[
1.Yuint_maxloop_setb_witha(tbl_1_num,tbl_2_num)
2.运用了Yutils的math库，所以不用自己去添加round的函数了，但是需要先装Yutils库
3.和第三个函数一样的输出
--]]
function Yuint_maxloop_setb_witha(tbl_1_num,tbl_2_num)
	maxloop(tbl_1_num)
	local numa = tbl_1_num
	local numb = tbl_2_num
	max_c_j = maxj
		if j == 1 then 
			c_j = 1
		else
			c_j = _G.Yutils.math.trim(_G.Yutils.math.round(j*(numb/numa)),1,numb)
		end
	return c_j
end
	return ""
end