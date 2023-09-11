mod Calculator {
    fn addition(num1: u32, num2: u32) -> u32 {
        num1 + num2
    }

    fn subtraction(num1: u32, num2: u32) -> u32 {
        num1 - num2
    }

    fn multiplication(num1: u256, num2: u256) -> u256 {
        num1 * num2
    }

    fn division(num1: u32, num2: u32) -> u32 {
        num1 / num2
    }
}

mod Geometry {
    fn rectangleArea(length: u32, width: u32) -> u32 {
        length * width
    }

    fn triangleArea(base: u32, height: u32) -> u32 {
        1/2 * base * height
    }

    fn circleArea(radius: u32) -> u32 {
        22/7 * radius * radius
    }
}

use debug::PrintTrait;
use Calculator::{addition, subtraction, multiplication, division};
use Geometry::{rectangleArea, triangleArea, circleArea};

fn main() {
    let x = addition(5, 7);
    let y = division(12, 4);
    let circle1 = circleArea(4);
    let rect = Geometry::rectangleArea(4, 2);
    // x.print();
    // y.print();
    // circle1.print();
    rect.print();
}