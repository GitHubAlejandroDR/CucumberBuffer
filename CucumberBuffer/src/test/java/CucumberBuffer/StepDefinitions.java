package CucumberBuffer;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.Assertions.*;

public class StepDefinitions {

	private BufferAcotado_ADominguez b;

	@Given("Creo un buffer de tamaño {int}")
	public void creo_un_buffer_de_tamaño(Integer int1) {
		// Write code here that turns the phrase above into concrete actions
		b = new BufferAcotado_ADominguez(int1);
	}

	@Given("compruebo que la capacidad del buffer es {int}")
	public void compruebo_que_la_capacidad_del_buffer_es(Integer int1) {
		// Write code here that turns the phrase above into concrete actions
		assertEquals(int1, b.capacidadActual);
	}

	@When("introduzco el elemento {int}")
	public void introduzco_el_elemento(Integer int1) {
		// Write code here that turns the phrase above into concrete actions
		b.put(int1);
	}

	@When("introduzco el elemento ")
	public void introduzco_el_elemento() {
		// Write code here that turns the phrase above into concrete actions
	}

	@When("introduzco el segundo elemento {int}")
	public void introduzco_el_segundo_elemento(Integer int1) {
		// Write code here that turns the phrase above into concrete actions
		b.put(int1);
	}

	@When("introduzco el segundo elemento ")
	public void introduzco_el_segundo_elemento() {
		// Write code here that turns the phrase above into concrete actions
	}

	@When("retiro un elemento")
	public void retiro_un_elemento() {
		// Write code here that turns the phrase above into concrete actions
		b.get();
	}

	@Then("al verficar si está vacío esto debe ser True")
	public void al_verficar_si_está_vacío_esto_debe_ser_true() {
		// Write code here that turns the phrase above into concrete actions
		assertTrue(b.isEmpty());
	}

	@Then("y el tamaño del buffer debe ser {int}")
	public void y_el_tamaño_del_buffer_debe_ser(Integer int1) {
		// Write code here that turns the phrase above into concrete actions
		assertEquals(b.size(), int1);
	}

	@Then("y la capacidad del buffer es {int}")
	public void y_la_capacidad_del_buffer_es(Integer int1) {
		// Write code here that turns the phrase above into concrete actions
		assertEquals(b.capacidadActual, int1);
	}

	@Then("al obtener un elemento este debe ser el {int}")
	public void al_obtener_un_elemento_este_debe_ser_el(Integer int1) {
		// Write code here that turns the phrase above into concrete actions
		assertEquals(b.get(), int1);
	}

	@Then("al verficar si está lleno esto debe ser True")
	public void al_verficar_si_está_lleno_esto_debe_ser_true() {
		// Write code here that turns the phrase above into concrete actions
		assertTrue(b.isFull());
	}

	// AÑADIDOS DEL FeaturesBuffer_exception.java

	@Given("Quiero verificar el sistema")
	public void quiero_verificar_el_sistema() {
		// Write code here that turns the phrase above into concrete actions
	}

	@When("el tamaño del buffer es negativo")
	public void el_tamaño_del_buffer_es_negativo() {
		// Write code here that turns the phrase above into concrete actions
	}

	@Then("creo un buffer con tamaño {int}")
	public void creo_un_buffer_con_tamaño(Integer int1) {
		// Write code here that turns the phrase above into concrete actions
		assertThrows(IllegalArgumentException.class, () -> new BufferAcotado_ADominguez(int1));
	}

	@Then("si retiro otro lanza una excepción")
	public void si_retiro_otro_lanza_una_excepción() {
		// Write code here that turns the phrase above into concrete actions
		assertThrows(IllegalStateException.class, () -> b.get());
	}

	@Then("si introduzco el {int} lanza una excepción")
	public void si_introduzco_el_lanza_una_excepción(Integer int1) {
		// Write code here that turns the phrase above into concrete actions
		assertThrows(IllegalStateException.class, () -> b.put(int1));

	}

}
