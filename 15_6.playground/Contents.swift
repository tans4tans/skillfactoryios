// 1. Создайте перечисление для ошибок. Добавьте в него 3 кейса: ошибка 400, ошибка 404, ошибка 500.
// Далее создайте переменную, которая будет хранить в себе какую-либо ошибку (400 или 404 или 500). И при помощи do-catch сделайте обработку ошибок перечисления. Для каждой ошибки должно быть выведено сообщение в консоль.

enum StatusError: Error {
    case badRequest // 400
    case notFound // 404
    case internalServerError // 500
}

var error: Int = 404

do {
    try statusPrint(error: error)
} catch StatusError.badRequest {
    print("Error 400: Ошибка в запросе")
} catch StatusError.notFound {
    print("Error 404: Страница не найдена")
} catch StatusError.internalServerError {
    print("Error 500: Внутренняя ошибка сервера")
}


// 2. Теперь добавьте проверку переменных в генерирующую функцию и обрабатывайте её!

func statusPrint(error: Int) throws {
    if error == 400 {
        throw StatusError.badRequest
    }
    else if error == 404 {
        throw StatusError.notFound
    }
    else if error == 500 {
        throw StatusError.internalServerError
    }
    else {
        print("No errors, hooray!")
    }
}


// 3. Напишите функцию, которая будет принимать на вход два разных типа и проверять: если типы входных значений одинаковые, то вывести сообщение “Yes”, в противном случае — “No”.

func checkType<T, E>(a: T, b: E) {
    if (type(of: a) == type(of: b)) {
        print("Yes")
    } else {
        print("No")
    }
}

checkType(a: 5, b: "yes")
checkType(a: "Hello", b: "World")


// 4. Реализуйте то же самое, но если тип входных значений различается, выбросите исключение. Если тип одинаковый — тоже выбросите исключение, но оно уже будет говорить о том, что типы одинаковые. Не бойтесь этого. Ошибки — это не всегда про плохой результат.

enum Types: Error {
    case sameType
    case differentType
}

func checkTypeSecond<T, E>(a: T, b: E) throws {
    if (type(of: a) == type(of: b)) {
        throw Types.sameType
    } else {
        throw Types.differentType
    }
}


// 5. Напишите функцию, которая принимает на вход два любых значения и сравнивает их при помощи оператора равенства ==.

func checkTwo<T: Equatable, E: Equatable>(a: T, b: E) -> Bool {

    return false
}
