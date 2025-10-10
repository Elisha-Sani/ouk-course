import from byllm.llm { Model }

glob llm = Model(model_name = "gemini/gemini-2.0-flash");

obj Person {
    has name: str;
    has career_goal: str;
    has region: str;
}

sem Person = "Represents the personal record of a person";
sem Person.name = "Full name of the person";
sem Person.career_goal = "Target career of the person";
sem Person.region = "Current geographical location of the person";

"""Recommend a SMART clear step by step learning path for the person to take to achieve his/her career goal"""
def find_learning_path(person: Person) -> str by llm();

with entry {

    user_name = input("Enter your name: ");
    user_goal = input("Enter your specific career goal (e.g. Next.js Full Stack Developer): ");
    user_region = input("Enter your region/country (e.g. Kenya): ");


    user_profile= Person(user_name, user_goal, user_region);

    print(f"Generating personalized learning path for {user_profile.name} ...");
    print(find_learning_path(user_profile));
}