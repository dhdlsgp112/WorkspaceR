


#
#1.변수명/표준입력/표준출력
#
#변수명 부여방식
numberValue <- 1    #camel 표기법
str_value <- "R Language"   #snake 표기법
booleanvalue <- TRUE   #일반표기법

#표준 출력 장치에 출력
#
#print():자동 줄바꿈(\n, 자동개행)
numberValue;print(numberValue)
str_value;print(str_value)
booleanvalue;print(booleanvalue)

#제어문자:화면에 출력되지 않고 기능을 수행하는 문자
# \n: 개행문자(줄바꿈)
# \t: tab문자
#cat():여러 내용을 출력할 수 있고, 자동 줄바꿈이 일어나지
#      않는 표준 출력장치에 출력하는 함수
cat('Numeric number:'',numberValue','\n')
cat('String:',str_value,'\n')
cat('Boolean value:',booleanvalue,'\n')
print('---------------------------------')
cat('Numeric number:',numberValue,'\t',
    'String:',str_value,'\t',
    'Boolean Value:',booleanvalue,'\n')

#표준 임력 장치로 부터 입력
#
#scan():표준 입력 장치로 부터 입력 받는 함수
#readline():표준 입력 장치로 부터 표형식으로 입력 받는 함수
#edit():표준 입력 장치로 부터 표형식으로 입력 받는 함수
#
inputData <- scan() #빈줄이 입력될때 까지 숫자를 입력 받는다.
class(inputData)
inputData

inputData <- scan(what=character())
class(inputData)
inputData

inputData <- readline('Input data <- ')
class(inputData)
inputData


number1 <- readline('Input number1:')
number2 <- readline('Input number2:')
result <- as.numeric(number1)+as.numeric(number2)
result


result <- number1+number2

#
#실습 문제: 두 수를 입력 받아서 다음과 같이 출력
#   입력
#       Input number1:[10]
#       Input number2:[5]

# 출력 결과 
#               10+5=15
#               10-5=5
#               10*5=50
#               10/5=2
#               10%%5=0

number1 <- readline('Input number1:')
number2 <- readline('Input numvber2:')

number1 <- as.numeric(readline('Input number1:'))
number2 <- as.numeric(readline('Input number2:'))

resultAdd <- number1+number2
resultSub <- number1-number2
resultMul <- number1*number2
resultDiv <- number1/number2
resultRem <- number1%%number2

cat(number1,'+',number2,'=',resultAdd,'\n',
    number1,'-',number2,'=',resultSub,'\n',
    number1,'*',number2,'=',resultMul,'\n',
    number1,'/',number2,'=',resultDiv,'\n',
    number1,'%%',number2,'=',resultRem,'\n')


#
#2.1 Algorithm 이해
#
#Algorithm: 문제를 해결하기 위한 일처리 순서
#
#Algorithm 요건
#1.입력 :반드시 0개 이상의 입력이 있어야한다.
#2.출력: 반드시 1개 이상의 출력이 있어야한다.
#3.유한성: 반드시 끝낼 수 있어야 한다
#4.효과성: 효과적인 방법으로 정의되어야 한다.
#5.명확성: 명확한 방법으로 정의 되어야 한다.


#컴퓨터 프로그램의 구조
#
#-순차구조: 시작부터 끝날때 까지 차례대로 수행
#-선택구조: 조건에 따라 처리 방향을 빠꾸어서 수행
#-반복구조: 조건이 만족하는 동안 동일한 내용을 반복 수행
#
#컴퓨터 프로그램은 알고리즘에 기반으로 기억장소 원리와
#                    순차/선택/반복구조를 조합하여 작성한다.
#

#2.2선택구조
#
#선택구조 : 조건에 따라 처리 방향을 결정하는 구조
#
#선택 구조 종류
# 1. 단순 선택 구조
# 2. 양자 택일 구조
# 3. 다중 선택구조
# 4. 중첩 선택 구조
#
# 1. 단순 선택 구조 
job.type <- 'B'
bonus <- 0
if(job.type=='A'){               #code block(code집합)
    bonus <- 200
}    
cat('job type:',job.type,'\t\tbonus:',bonus)

#2. 양자 택일 구조
job.type <- 'B'
bonus <- 0
if(job.type=='A'){               #code block(code집합)
    bonus <- 200
}else{
    bonus <- 100
}    
cat('job type:',job.type,'\t\tbonus:',bonus)
#3. 다중선택구조
score <- 50
if(score>=90){
    grade <- 'A'
}else if (score>=80){
    grade <- 'B'
}else if (score>=70){
    grade <- 'C'
}else if (score>=60){
    grade <- 'D'
}else{
    grade <- 'F'
}
cat('score:',score,'\t\tgrade:',grade)

#4. 중첩선택
a <- 2
b <- 1
c <- 3
if(a>b){
    if(a>c){
        max <- a
        if(b>c){
            mid=b;min=c
        }else{
            mid=c;min=b
        }    
    }else if (c>b){
             max <- c;mid <- a;min <- b
         }
}else if(b>c){
        max <- b
        if(a>c){
            mid <- a;min <- c
        }else{
            mid <- c;minc <- a
    }
}
cat('max:',max,'\tmid:',mid,'\tmin:',min)

number <- 10
remainder <- number%%2

if(remainder==0){
    oddeven <- '짝수'
}else{
    oddeven <- '홀수'
}
cat('Number:',number,'는',oddeven,'이다.')

a <- 5
b <- 20

if(a>5&b>5){
    cat(a,'>5 and',b,'>5')
}else{
    cat(a,'<=5or',b,'<=5')
}


a <- 8; b <- 5; c <- 10; max <- a
if(b>max){
    max <- b
}
if(c>max){
    max <- c
}
cat('a=',a,'b=',b,'c=',c,'max=',max)


a <- 8; b <- 5; c <- 10; min <- a

if(b<min){
    min <- b
}
if(c<min){
    min <- c
}
cat('a=',a,'b=',b,'c=',c,'min=',min)
    
