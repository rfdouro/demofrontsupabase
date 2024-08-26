class ClientSubapase {
  static getClient() {
    return supabase.createClient(
      "https://uhngievvfhurgeggmzjd.supabase.co",
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVobmdpZXZ2Zmh1cmdlZ2dtempkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjM1MDMwOTgsImV4cCI6MjAzOTA3OTA5OH0.sKq8CzKinJm3H9uHfOW9_t4qpmLJdGYr7TnhPyB0K4c"
    );
  }

  static getUser = async function () {
    const {
      data: { user },
    } = await client.auth.getUser();
    return user;
  };
}
