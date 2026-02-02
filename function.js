function demo(){
    console.log("hello")
}
demo()



// Arithmetic Operators
 a=40;
 b=37;
console.log(a-b)
console.log(a+b)
console.log(a*b)
console.log(a**b)
console.log(a/b)

// functions

function value(a,b){
    return a*b;
}console.log(value(10,5));

function value(a,b){
    console.log(a+b);
    console.log(a*b);
    console.log(a-b);
    console.log(a**b);
} value(19,20);

age=16;
if (age>=18){
    console.log("you are eligible for driving");
} else {
    console.log("you are not eligible");
}

function checkevenodd(num){
    if (num %2===0){
        return "even number";
    }else {
        return "odd number";
    }
}
console.log(checkevenodd(25));

num=19;
if (num %2===0){
    console.log("Even number")
} else {
    console.log("odd number")
}

function findlargest(a,b){
if (a>b){
    return " a is larger";
}else{
    return "b is larger";
}
}
console.log(findlargest(99,69));


a=18
b=20
if (a>b) {
    console.log("a is larger")
}else{
    console.log("b is larger")
}

function printEvenNumbers(n) {
    for (let i = 1; i <= n; i++) {
        if (i % 2 === 0) {
            console.log(i);
        }
    }
}

printEvenNumbers(20);


function countEven(n) {
    let count = 0;

    for (let i = 1; i <= n; i++) {
        if (i % 2 === 0) {
            count++;
        }
    }
    return count;
}

console.log(countEven(10));













