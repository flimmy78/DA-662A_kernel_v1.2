/* linux/arch/arm/mach-s5p6442/include/mach/regs-clock.h
 *
 * Copyright (c) 2010 Samsung Electronics Co., Ltd.
 *		http://www.samsung.com/
 *
 * S5P6442 - Clock register definitions
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
*/

#ifndef __ASM_ARCH_REGS_CLOCK_H
#define __ASM_ARCH_REGS_CLOCK_H __FILE__

#include <mach/map.h>

#define S5P_CLKREG(x)		(S3C_VA_SYS + (x))

#define S5P_APLL_LOCK		S5P_CLKREG(0x00)
#define S5P_MPLL_LOCK		S5P_CLKREG(0x08)
#define S5P_EPLL_LOCK		S5P_CLKREG(0x10)
#define S5P_VPLL_LOCK		S5P_CLKREG(0x20)

#define S5P_APLL_CON		S5P_CLKREG(0x100)
#define S5P_MPLL_CON		S5P_CLKREG(0x108)
#define S5P_EPLL_CON		S5P_CLKREG(0x110)
#define S5P_VPLL_CON		S5P_CLKREG(0x120)

#define S5P_CLK_SRC0		S5P_CLKREG(0x200)
#define S5P_CLK_SRC1		S5P_CLKREG(0x204)
#define S5P_CLK_SRC2		S5P_CLKREG(0x208)
#define S5P_CLK_SRC3		S5P_CLKREG(0x20C)
#define S5P_CLK_SRC4		S5P_CLKREG(0x210)
#define S5P_CLK_SRC5		S5P_CLKREG(0x214)
#define S5P_CLK_SRC6		S5P_CLKREG(0x218)

#define S5P_CLK_SRC_MASK0	S5P_CLKREG(0x280)
#define S5P_CLK_SRC_MASK1	S5P_CLKREG(0x284)

#define S5P_CLK_DIV0		S5P_CLKREG(0x300)
#define S5P_CLK_DIV1		S5P_CLKREG(0x304)
#define S5P_CLK_DIV2		S5P_CLKREG(0x308)
#define S5P_CLK_DIV3		S5P_CLKREG(0x30C)
#define S5P_CLK_DIV4		S5P_CLKREG(0x310)
#define S5P_CLK_DIV5		S5P_CLKREG(0x314)
#define S5P_CLK_DIV6		S5P_CLKREG(0x318)

#define S5P_CLKGATE_IP0		S5P_CLKREG(0x460)
#define S5P_CLKGATE_IP3		S5P_CLKREG(0x46C)

/* CLK_OUT */
#define S5P_CLK_OUT_SHIFT	(12)
#define S5P_CLK_OUT_MASK	(0x1F << S5P_CLK_OUT_SHIFT)
#define S5P_CLK_OUT		S5P_CLKREG(0x500)

#define S5P_CLK_DIV_STAT0	S5P_CLKREG(0x1000)
#define S5P_CLK_DIV_STAT1	S5P_CLKREG(0x1004)

#define S5P_CLK_MUX_STAT0	S5P_CLKREG(0x1100)
#define S5P_CLK_MUX_STAT1	S5P_CLKREG(0x1104)

#define S5P_MDNIE_SEL		S5P_CLKREG(0x7008)

/* Register Bit definition */
#define S5P_EPLL_EN     		(1<<31)
#define S5P_EPLL_MASK   		0xffffffff
#define S5P_EPLLVAL(_m, _p, _s)   	((_m) << 16 | ((_p) << 8) | ((_s)))

/* CLKDIV0 */
#define S5P_CLKDIV0_APLL_SHIFT		(0)
#define S5P_CLKDIV0_APLL_MASK		(0x7 << S5P_CLKDIV0_APLL_SHIFT)
#define S5P_CLKDIV0_A2M_SHIFT		(4)
#define S5P_CLKDIV0_A2M_MASK		(0x7 << S5P_CLKDIV0_A2M_SHIFT)
#define S5P_CLKDIV0_D0CLK_SHIFT		(16)
#define S5P_CLKDIV0_D0CLK_MASK		(0xF << S5P_CLKDIV0_D0CLK_SHIFT)
#define S5P_CLKDIV0_P0CLK_SHIFT		(20)
#define S5P_CLKDIV0_P0CLK_MASK		(0x7 << S5P_CLKDIV0_P0CLK_SHIFT)
#define S5P_CLKDIV0_D1CLK_SHIFT		(24)
#define S5P_CLKDIV0_D1CLK_MASK		(0xF << S5P_CLKDIV0_D1CLK_SHIFT)
#define S5P_CLKDIV0_P1CLK_SHIFT		(28)
#define S5P_CLKDIV0_P1CLK_MASK		(0x7 << S5P_CLKDIV0_P1CLK_SHIFT)

/* Clock MUX status Registers */
#define S5P_CLK_MUX_STAT0_APLL_SHIFT	(0)
#define S5P_CLK_MUX_STAT0_APLL_MASK	(0x7 << S5P_CLK_MUX_STAT0_APLL_SHIFT)
#define S5P_CLK_MUX_STAT0_MPLL_SHIFT	(4)
#define S5P_CLK_MUX_STAT0_MPLL_MASK	(0x7 << S5P_CLK_MUX_STAT0_MPLL_SHIFT)
#define S5P_CLK_MUX_STAT0_EPLL_SHIFT	(8)
#define S5P_CLK_MUX_STAT0_EPLL_MASK	(0x7 << S5P_CLK_MUX_STAT0_EPLL_SHIFT)
#define S5P_CLK_MUX_STAT0_VPLL_SHIFT	(12)
#define S5P_CLK_MUX_STAT0_VPLL_MASK	(0x7 << S5P_CLK_MUX_STAT0_VPLL_SHIFT)
#define S5P_CLK_MUX_STAT0_MUXARM_SHIFT	(16)
#define S5P_CLK_MUX_STAT0_MUXARM_MASK	(0x7 << S5P_CLK_MUX_STAT0_MUXARM_SHIFT)
#define S5P_CLK_MUX_STAT0_MUXD0_SHIFT	(20)
#define S5P_CLK_MUX_STAT0_MUXD0_MASK	(0x7 << S5P_CLK_MUX_STAT0_MUXD0_SHIFT)
#define S5P_CLK_MUX_STAT0_MUXD1_SHIFT	(24)
#define S5P_CLK_MUX_STAT0_MUXD1_MASK	(0x7 << S5P_CLK_MUX_STAT0_MUXD1_SHIFT)
#define S5P_CLK_MUX_STAT1_D1SYNC_SHIFT	(24)
#define S5P_CLK_MUX_STAT1_D1SYNC_MASK	(0x7 << S5P_CLK_MUX_STAT1_D1SYNC_SHIFT)
#define S5P_CLK_MUX_STAT1_D0SYNC_SHIFT	(28)
#define S5P_CLK_MUX_STAT1_D0SYNC_MASK	(0x7 << S5P_CLK_MUX_STAT1_D0SYNC_SHIFT)

#endif /* __ASM_ARCH_REGS_CLOCK_H */
