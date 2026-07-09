package com.cognizant;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

public class DataServiceTest {

    @Test
    void testFetchData() {

        ExternalApi mockApi = mock(ExternalApi.class);

        when(mockApi.getData()).thenReturn("Mock Data");

        DataService service = new DataService(mockApi);

        assertEquals("Mock Data", service.fetchData());

        verify(mockApi).getData();
    }
}