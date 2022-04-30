/* sopine-baseboard-ethernet.dts */

/dts-v1/;
/ {
	model = "SoPine with baseboard";
	compatible = "pine64,sopine-baseboard\0pine64,sopine\0allwinner,sun50i-a64";
	fragment@0 {
		target-path = "/soc/ethernet@1c30000";
		__overlay__ {
			allwinner,tx-delay-ps = <500>;
		};
	};
};
