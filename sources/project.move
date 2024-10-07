module MyModule::StudyTimer {

    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    struct StudySession has store, key {
        start_time: u64,  // Timestamp of when the study session starts
    }

    /// Function to start a study session by recording the start time.
    public fun start_study(signer: &signer, start_time: u64) {
        let session = StudySession {
            start_time,
        };
        move_to(signer, session);
    }

}
