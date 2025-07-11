-- adcteste.vhd

-- Generated using ACDS version 18.1 625

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adcteste is
	port (
		CLOCK : in  std_logic                     := '0'; --      clk.clk
		CH0   : out std_logic_vector(11 downto 0);        -- readings.CH0
		CH1   : out std_logic_vector(11 downto 0);        --         .CH1
		CH2   : out std_logic_vector(11 downto 0);        --         .CH2
		CH3   : out std_logic_vector(11 downto 0);        --         .CH3
		CH4   : out std_logic_vector(11 downto 0);        --         .CH4
		CH5   : out std_logic_vector(11 downto 0);        --         .CH5
		CH6   : out std_logic_vector(11 downto 0);        --         .CH6
		CH7   : out std_logic_vector(11 downto 0);        --         .CH7
		RESET : in  std_logic                     := '0'  --    reset.reset
	);
end entity adcteste;

architecture rtl of adcteste is
	component adcteste_adc_mega_0 is
		generic (
			board          : string  := "DE10-Standard";
			board_rev      : string  := "Autodetect";
			tsclk          : integer := 0;
			numch          : integer := 0;
			max10pllmultby : integer := 0;
			max10plldivby  : integer := 0
		);
		port (
			CLOCK    : in  std_logic                     := 'X'; -- clk
			RESET    : in  std_logic                     := 'X'; -- reset
			CH0      : out std_logic_vector(11 downto 0);        -- export
			CH1      : out std_logic_vector(11 downto 0);        -- export
			CH2      : out std_logic_vector(11 downto 0);        -- export
			CH3      : out std_logic_vector(11 downto 0);        -- export
			CH4      : out std_logic_vector(11 downto 0);        -- export
			CH5      : out std_logic_vector(11 downto 0);        -- export
			CH6      : out std_logic_vector(11 downto 0);        -- export
			CH7      : out std_logic_vector(11 downto 0);        -- export
			ADC_SCLK : out std_logic;                            -- export
			ADC_CS_N : out std_logic;                            -- export
			ADC_DOUT : in  std_logic                     := 'X'; -- export
			ADC_DIN  : out std_logic                             -- export
		);
	end component adcteste_adc_mega_0;

begin

	adc_mega_0 : component adcteste_adc_mega_0
		generic map (
			board          => "DE10-Lite",
			board_rev      => "Autodetect",
			tsclk          => 5,
			numch          => 0,
			max10pllmultby => 1,
			max10plldivby  => 5
		)
		port map (
			CLOCK    => CLOCK, --      clk.clk
			RESET    => RESET, --    reset.reset
			CH0      => CH0,   -- readings.export
			CH1      => CH1,   --         .export
			CH2      => CH2,   --         .export
			CH3      => CH3,   --         .export
			CH4      => CH4,   --         .export
			CH5      => CH5,   --         .export
			CH6      => CH6,   --         .export
			CH7      => CH7,   --         .export
			ADC_SCLK => open,  -- (terminated)
			ADC_CS_N => open,  -- (terminated)
			ADC_DOUT => '0',   -- (terminated)
			ADC_DIN  => open   -- (terminated)
		);

end architecture rtl; -- of adcteste
