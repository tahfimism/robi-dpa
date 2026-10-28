---
title: CSE 2100 Lab Quiz Master Compact Notes
tags:
  - cse2100
  - oop
  - cpp
  - lab-quiz
  - obsidian
type: study-note
---

# 📚 CSE 2100 OOP Lab Quiz Master Compact Notes



---

## 1. OOP Basics & Concepts

### Core Paradigm & Principles
- **Procedural (C) vs Object-Oriented (C++)**:
  - Procedural programming focuses on functions and algorithms operating on passive data (Top-down approach).
  - Object-Oriented Programming (OOP) focuses on **data and objects** ==(Bottom-up design ==approach).
- **The 4 Pillars of OOP**:
  1. **Encapsulation**: Bundling data (attributes) and functions (methods) into a single unit (`class`). Hides data from direct external access (**data hiding / information hiding**) to ensure security.
  2. **Abstraction**: Representing essential features without including background details or complex implementation mechanics.
  3. **Inheritance**: Mechanism by which objects of one class acquire properties and behaviors of another class.
  4. **Polymorphism**: *"Poly"* = many, *"morph"* = form/behavior. Concept of **one interface, many implementations**.
- **Design Rules**:
  - **DRY Principle**: Stands for **Don't Repeat Yourself**.

---

## 2. Classes & Objects

### Fundamental Definitions
- **Class**: A user-defined data type, blueprint, or template that describes attributes and behaviors (e.g., `class Person`).
- **Object**: An actual runtime instance of a class allocated in memory (e.g., `Person sheldon;`).

### Access Specifiers
| Access Modifier | Class Internal | Derived Class | Outside World (`main`) | Notes |
| :--- | :---: | :---: | :---: | :--- |
| **`private`** | ✅ Yes | ❌ No | ❌ No | **Default** for `class`. Data hiding. |
| **`protected`** | ✅ Yes | ✅ Yes | ❌ No | Inheritable encapsulation. |
| **`public`** | ✅ Yes | ✅ Yes | ✅ Yes | **Default** for `struct`. User interface. |

> [!tip] Class vs Struct
> In C++, `class` and `struct` are identical except for defaults:
> - `class`: Members and inheritance default to **`private`**.
> - `struct`: Members and inheritance default to **`public`**.

### Member Function Mechanics
- **Inside Class Definition**: Treated implicitly as **`inline`** functions by the compiler.
- **Outside Class Definition**: Defined using the Scope Resolution Operator **`::`** (`void Box::show() { ... }`).
- **Memory Allocation**: All objects of a class share a **single/same memory space for member functions** in read-only code space. Functions are *not* duplicated per object.
- **Nesting**: A member function can call another member function of the exact same class directly without using the dot operator (`.`).

### Member Access & Pointers
- **Dot Operator (`.`)**: Used with direct object instances (`obj.show()`). Cannot be overloaded.
- **Arrow Operator (`->`)**: Used to access members through object pointers (`ptr->show()`). Can be overloaded.

### The `this` Pointer & Static Members
- **`this` Pointer**: Implicit pointer inside non-static member functions holding the memory address of the invoking object.
  - Returning `*this` (`return *this;`) enables **method cascading/chaining** (`c.add(5).add(3);`).
  - **Unavailable in**: (1) Static member functions, (2) Friend functions.
- **Static Members**:
  - Belong to the class blueprint as a whole, shared globally across all instances.
  - Static member functions **do not have a `this` pointer**, cannot be `virtual`, and can only access other static members directly.

### Friend Functions
- Declared inside the class using the `friend` keyword (`friend void show(Box b);`).
- Grants an external global function or class direct access to `private` and `protected` members.
- **Properties**: Not a member function, has no `this` pointer, defined outside without `friend` keyword or `::` prefix, **not inherited** by derived classes.

---

## 3. Constructors & Destructors

### Constructor Rules & Types
- **Properties**: Special member function with the exact same name as the class; called automatically upon object creation; no return type (not even `void`); can be overloaded; **cannot be virtual**; **not inherited**.
- **Types**:
  1. **Default Constructor**: Accepts no parameters (`Student() { marks = 0; }`).
  2. **Parameterized Constructor**: Accepts arguments to initialize custom values.
  3. **Copy Constructor**: Initializes an object using another object of the same class (`Point(const Point &p)`). Parameter **must be passed by reference** (`const Class &obj`) to prevent infinite recursion.
  4. **Dynamic Constructor**: Uses the `new` operator inside the constructor to allocate memory dynamically on the heap at runtime.

### Destructor Rules
- **Properties**: Preceded by a tilde symbol (`~`) (`~MyClass()`); performs cleanup / deallocates memory upon object destruction.
- **Constraints**:
  - **Cannot take arguments / parameters** (`~Box()` has 0 parameters).
  - **Cannot be overloaded** (only 1 destructor per class).
  - No return type.
  - **Should be `virtual`** in polymorphic base classes to prevent memory leaks when deleting derived objects via base pointers.

### Dynamic Memory Allocation
- **`new` Operator**: Allocates memory dynamically on the heap.
- **`delete` / `delete[]` Operator**: Releases dynamically allocated memory back to the OS.

---

## 4. Inheritance (Types & Rules)

### The 5 Types of Inheritance
1. **Single**: 1 base class $\rightarrow$ 1 derived class (`class Dog : public Animal`).
2. **Multiple**: Multiple base classes $\rightarrow$ 1 derived class (`class C : public A, public B`).
3. **Multilevel**: Linear chain of inheritance ($A \rightarrow B \rightarrow C$).
4. **Hierarchical**: 1 base class $\rightarrow$ Multiple derived classes.
5. **Hybrid**: Combination of two or more inheritance types.

### Inheritance Terminology & Visibility Matrix
- **Derived Class**: Also called **Child / Sub class**.
- **Base Class**: Also called **Parent / Super class**.

| Base Member Specifier | Public Derivation (`: public`) | Private Derivation (`: private`) | Protected Derivation (`: protected`) |
| :--- | :---: | :---: | :---: |
| **Private** | Inaccessible | Inaccessible | Inaccessible |
| **Protected** | Protected | Private | Protected |
| **Public** | Public | Private | Protected |

> [!warning] Default Inheritance Mode
> If visibility mode is omitted during class derivation (`class Derived : Base`), it defaults to **`private`** for classes and **`public`** for structs.

### Constructor & Destructor Execution Order
- **Constructors**: Executed from **Base class $\rightarrow$ Derived class** (for multiple inheritance, in the order listed in the derived class header: `class C : public A, public B` calls `A` then `B` then `C`).
- **Destructors**: Executed in exact **reverse order** (**Derived class $\rightarrow$ Base class**).
- **Passing Args to Base Constructor**: Uses constructor initializer list:
  ```cpp
  Derived(int i, int j) : Base(i) { y = j; }
  ```

### The Diamond Problem & Virtual Base Class
- **The Diamond Problem**: Occurs in multiple/hybrid inheritance when a derived class inherits duplicate copies of a common grandparent base class through two intermediate parents, causing ambiguity and memory bloat.
- **The Solution**: Declare intermediate parent classes using **`virtual public`** inheritance:
  ```cpp
  class A { public: int value; };
  class B : virtual public A { };
  class C : virtual public A { };
  class D : public B, public C { }; // D receives exactly ONE shared copy of A
  ```

### Non-Inherited Members
- **Constructors**, **Destructors**, **Assignment Operators (`=`)**, and **Friend Functions** are **NOT inherited** in C++.

---

## 5. Operator Overloading

### Core Rules
- Gives custom meanings to existing C++ operators for user-defined types (classes).
- At least one operand must be a user-defined type.
- **Can only overload existing operators** — cannot invent new operator symbols (e.g., `@`, `**`).
- Precedence, associativity, and operand count **cannot be changed**.

### Non-Overloadable Operators (5 Total)
```
1. Scope Resolution Operator ( :: )
2. Class Member Access Operator ( . )
3. Pointer-to-Member Selector Operator ( .* )
4. Ternary / Conditional Operator ( ?: )
5. Size Operator ( sizeof )
```

### Member vs Friend Operator Overloading
- **Member Operator Overload**: Left-hand operand is passed implicitly as `this`. Binary overload accepts 1 parameter:
  ```cpp
  Vector operator+(Vector obj) { return Vector(val + obj.val); }
  ```
- **Friend Operator Overload**: Global function; accepts both operands explicitly (2 parameters for binary).
- **Streaming Operators (`<<` and `>>`)**: **MUST be overloaded as Friend / Non-Member functions** because the left-hand operand is a stream object (`std::ostream` / `std::istream`), not our class object:
  ```cpp
  friend ostream& operator<<(ostream& out, const Student& s) {
      out << "Roll: " << s.roll << ", Marks: " << s.marks;
      return out;
  }
  ```
- **Non-Friendable Operators**: `=`, `[]`, `()`, and `->` **MUST** be overloaded as member functions only.

---

## 6. Pointers, Virtual Functions & Memory

### Object Pointers & Dynamic Dispatch
- Base-class pointer can point to a derived-class object (`Base *ptr = &derivedObj;`).
- Derived-class pointer **cannot** normally point to a base-class object.
- **Virtual Functions**:
  - Declared using the **`virtual`** keyword in the base class (`virtual void speak();`).
  - Resolves function calls at **runtime (dynamic / late binding)** based on the actual object type being pointed to rather than the pointer type.
  - The `override` keyword in derived classes catches syntax mistakes during virtual overriding.

### Virtual Destructors
- If a base-class pointer points to a derived object and the destructor is **NOT virtual**, deleting via the base pointer calls *only* the base destructor, leaking derived class memory.
- **Rule**: Base class destructors in polymorphic hierarchies **must be declared `virtual`**.

### What CANNOT be Virtual
- **Constructors**, **Friend functions**, and **Static member functions** can **NEVER** be virtual.

---

## 7. Polymorphism (Early vs Late Binding)

### Classification
```
                      ┌──────────────────────────┐
                      │       Polymorphism       │
                      └────────────┬─────────────┘
                                   │
         ┌─────────────────────────┴─────────────────────────┐
         ▼                                                   ▼
┌─────────────────────────────────┐         ┌─────────────────────────────────┐
│     Compile-Time Polymorphism   │         │       Runtime Polymorphism      │
│  (Early Binding / Static)       │         │    (Late Binding / Dynamic)     │
├─────────────────────────────────┤         ├─────────────────────────────────┤
│ - Function Overloading          │         │ - Virtual Functions             │
│ - Operator Overloading          │         │   (via Base-Class Pointers)     │
└─────────────────────────────────┘         └─────────────────────────────────┘
```

### Overloading vs Overriding
| Feature | Function Overloading | Function Overriding |
| :--- | :--- | :--- |
| **Scope** | Same class | Base vs Derived class |
| **Function Signature** | Same name, **different** parameters | Same name, **identical** parameters |
| **Binding Time** | Compile-time (Early binding) | Runtime (Late binding) |
| **Keyword Required** | None | `virtual` in base class |

### Abstract Classes & Pure Virtual Functions
- **Pure Virtual Function**: Declared with `= 0` in base class (`virtual void draw() = 0;`). Has no body in the base class.
- **Abstract Class**: Any class containing at least one pure virtual function. **Cannot be instantiated** (`AbstractObj obj;` is a compile error). Exists solely as an interface for derived classes.

---

## ⚠️ Common Error Traps & Syntax Quick-Fixes

### 1. Destructor with Parameters
- ❌ `~Box(int x) { }` $\rightarrow$ **ERROR**: Destructors cannot accept arguments.
- ✅ `~Box() { }`

### 2. Copy Constructor Passed by Value
- ❌ `Point(Point p) { ... }` $\rightarrow$ **ERROR**: Passing by value triggers infinite copy-constructor recursion.
- ✅ `Point(const Point &p) { ... }`

### 3. Missing `virtual` Keyword in Base Class
- ❌ Base `void speak() { cout << "Animal"; }` $\rightarrow$ Base pointer `ptr->speak()` always invokes `Animal`, ignoring `Dog::speak()`.
- ✅ `virtual void speak() { cout << "Animal"; }`

### 4. Static Member Function using `this` Pointer
- ❌ `static void show() { cout << this->a; }` $\rightarrow$ **ERROR**: `this` is unavailable in static context.
- ✅ `void show() { cout << this->a; }` OR remove `this->a` inside static function.

### 5. Missing Friend Keyword for External Access
- ❌ `int getSize(Box b) { return b.size; }` where `size` is private $\rightarrow$ **ERROR**.
- ✅ Declare inside `Box`: `friend int getSize(Box b);`

### 6. Base Class Lacks Default Constructor
- ❌ `class A { public: A(int x) {} }; class B : public A { public: B() {} };` $\rightarrow$ **ERROR**.
- ✅ Pass parameters upward in initializer list: `B(int x) : A(x) {}`

### 7. Overloading Non-Overloadable Operators
- ❌ `Num operator::(Num obj)` $\rightarrow$ **ERROR**: `::` cannot be overloaded.
- ✅ Overload valid operators like `operator+`.

---

## ⚡ Quick Reference Master Tables

### Constructor vs Destructor
| Feature | Constructor | Destructor |
| :--- | :--- | :--- |
| **Purpose** | Initialize object state | Clean up resources / free heap |
| **Name** | Same as class name | Same as class name preceded by `~` |
| **Parameters** | Can accept parameters (Overloadable) | Cannot accept parameters (1 per class) |
| **Invocation** | Automatically on object creation | Automatically when object leaves scope / deleted |
| **Virtual?** | Cannot be virtual | Can (and should) be virtual |

### One-Word / Quick Terminology
- **Overloading**: Multiple functions with same name but different parameters.
- **Overriding**: Redefining a base class virtual function in a derived class with identical signature.
- **Late / Dynamic Binding**: Resolving function call during execution (virtual functions).
- **Early / Static Binding**: Resolving function call at compile time (overloading).
- **Abstract Class**: Class with $\ge 1$ pure virtual function (`= 0`).
