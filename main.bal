import ballerina/http;

listener http:Listener httpListener = new (8290);

service / on httpListener {
    resource function get helloworld() returns string {
        return "Hello, World!";
    }

    resource function get helloworld/[string name]() returns string {
        return "Welcome " + name;
    }
}
