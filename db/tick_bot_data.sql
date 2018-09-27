CREATE TABLE IF NOT EXISTS camelot_tick_messages
(
    id serial primary key,
    message VARCHAR(1000) not null,
    frequency integer
);

INSERT INTO camelot_tick_messages (message, frequency) VALUES
('TICK!!!!', 100),
('TICK!!!!!!!!!', 75),
('TICK!!!!!!!!!!!!!!!!!', 75),
('TICK!?!?!?!?!', 75),
('........TICK!!!!', 75),
('TICK TICK BOOM!!!!', 75),
('TICK!!!!! TOCK muthafuckas', 50),
('Tick!!!!! tock on the clock but the party don''t stop', 50),
('Tick!!!!! and you dont stop!', 50),
('TICK!!!!! on the dog! Call the vet Mona...', 50),
('TICK!!!!! tock...croc...run, Captain!', 50),
('TICK!!!!!.....tack toe.  I win.', 50),
('PSA: check your dog after walks so he doesn''t get any TICKS!!!!!', 50);
