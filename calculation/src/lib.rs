#[derive(Debug)]
pub struct InitialPosition {
    pub position_key: String,
    pub longitude: f64,
    pub latitude: f64,
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_initial_position_struct() {
        let initial_pos = InitialPosition {
            position_key: String::from("position001"),
            longitude: -99.153728,
            latitude: 19.470496,
        };
        assert_eq!(initial_pos.position_key, "position001");
        assert_eq!(initial_pos.longitude, -99.153728);
        assert_eq!(initial_pos.latitude, 19.470496);
    }
}
