function [f,g]=jm96bfun(v)
%96年中国大学生数学建模竞赛B题:洗衣机
%优化函数
%参考：《数学的实践与认识》1997，1，67-70
%相关M文件：jm96b

%L.J.HU
alfa=0.56;%洗涤剂亲和比例
c0=0.05;%洗涤效果要求
w=3;%衣物重量
d0=30;%洗涤剂量
f=sum(v);
ww=w./(w+alfa*v);
g=prod(ww);
g=g*d0/w-c0;
