public class DepartmentControllerIT extends BaseIT {

    @Container
    private static final DockerComposeContainer environment =
            new DockerComposeContainer(new File("src/test/resources/docker-compose.yaml"))
                    .withExposedService("postgres", POSTGRES_PORT, Wait.forListeningPort())
                    .withLocalCompose(true);

    @Test
    @Sql({ "/import.sql" })
    public void testGetDepartmentById() {

        ResponseEntity<Department> response = testRestTemplate.getForEntity( "/department/{id}",Department.class,100);
        Department dept =  response.getBody();

        assertEquals(100,dept.getId());
        assertEquals("HR", dept.getName());

    }

    @DynamicPropertySource
    public static void properties(DynamicPropertyRegistry registry) {

        String postgresUrl = environment.getServiceHost("postgres", POSTGRES_PORT)
                + ":" +
                environment.getServicePort("postgres", POSTGRES_PORT);

        registry.add("spring.datasource.url", () -> "jdbc:postgresql://"+postgresUrl+"/eis");
        registry.add("spring.datasource.username", () ->"postgres");
        registry.add("spring.datasource.password", () ->"postgres");

    }


}
