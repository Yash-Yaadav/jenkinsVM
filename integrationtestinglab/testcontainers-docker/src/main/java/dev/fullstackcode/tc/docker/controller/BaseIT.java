@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
@Testcontainers
public  class BaseIT {
	
	@Autowired
	protected TestRestTemplate testRestTemplate ;

	protected static int POSTGRES_PORT = 5432;

}
