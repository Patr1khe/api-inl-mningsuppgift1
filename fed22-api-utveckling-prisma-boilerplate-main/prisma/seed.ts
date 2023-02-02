/**
 * Example Seeder
 */
import prisma from '../src/prisma'

async function main() {
	/**
	 * Publishers
	 */
	// const hutchinson = await prisma.publisher.upsert({
	// 	where: { id: 1 },
	// 	update: {},
	// 	create: { id: 1, name: "Hutchinson" }
	// })

	/**
	 * Authors
	 */
	// const clarke = await prisma.author.upsert({
	// 	where: { id: 1 },
	// 	update: {},
	// 	create: { name: "Sir Arthur C. Clarke" }
	// })

	/**
	 * Books
	 */
	// const odessey = await prisma.book.upsert({
	// 	where: { id: 1 },
	// 	update: {},
	// 	create: {
	// 		title: "2001: A Space Odessey",
	// 		pages: 224,
	// 		publisherId: hutchinson.id,
	// 		authors: {
	// 			connect: [
	// 				{ id: clarke.id },
	// 			],
	// 		}
	// 	}
	// })
}

main()
	.then(async () => {
		await prisma.$disconnect()
	})
	.catch(async (e) => {
		console.error(e)
		await prisma.$disconnect()
		process.exit(1)
	})

/*
[
    {
        "name": "Gott & Blandat Giants",
        "description": "<p>En mix av lakrits och gelé med fruktsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, glukos-fruktossirap, stärkelse, VETEMJÖL, melass, syra (citronsyra), fuktighetsbevarande medel (sorbitoler, glycerol), lakritsextrakt, salt, vegetabiliska oljor (kokos, palm), aromer, färgämnen (E153, E120, E100, E141), ytbehandlingsmedel (bivax), stabiliseringsmedel (E471).</p>\n<p><em>Alla priser är per skopa.</em></p>\n",
        "price": 12,
        "images": {
            "large": "/storage/products/1997509.png",
            "thumbnail": "/storage/products/thumbnails/1997509-300x300.png"
        },
        "stock_status": "instock",
        "stock_quantity": 5
    },
    {
        "name": "Banana Bubs",
        "description": "<p>Banan/gräddkola</p>\n<p>Innehållsförteckning: Glukos-fruktossirap, socker, majsstärkelse, vatten, surhetsreglerande medel (äppelsyra, natriumcitrat), potatisprotein, aromämnen, färgämnen: (E150d, E100), kokosolja, ytbehandlingsmedel (karnaubavax).</p>\n<p><em>Alla priser är per skopa.</em></p>\n",
        "price": 8,
        "images": {
            "large": "/storage/products/156622.png",
            "thumbnail": "/storage/products/thumbnails/156622-300x300.png"
        },
        "stock_status": "instock",
        "stock_quantity": 8
    },
    {
        "name": "Banana Splits",
        "description": "<p>Fyllig vitchoklad med smak av kola krispig banan.</p>\n<p>Innehållsförteckning: Socker, kakaosmör, torkad banan, HELMJÖLKSPULVER, mjölksocker(LAKTOS), SKUMMJÖLKSPULVER, emulgeringsmedel E322 (SOJALECITIN), naturliga aromer, ytbehandlingsmedel (E414, E904).</p>\n<p>Kan innehålla spår av MANDEL, NÖTTER och VETE.</p>\n<p><em>Alla priser är per skopa.</em></p>\n",
        "price": 8,
        "images": {
            "large": "/storage/products/3827741.png",
            "thumbnail": "/storage/products/thumbnails/3827741-300x300.png"
        },
        "stock_status": "instock",
        "stock_quantity": 6
    },
    {
        "name": "Ananas",
        "description": "<p>Ananas</p>\n<p>Innehållsförteckning: Glukosirap, socker, majsstärkelse, gelatin, syror: citronsyra, aromämnen, vegetabiliska oljor (kokosnöt, palmkärna), glansmedel: bivax, carnaubavax, färger: E100, E133.</p>\n<p><em>Alla priser är per skopa.</em></p>\n",
        "price": 9,
        "images": {
            "large": "/storage/products/2147890-1.png",
            "thumbnail": "/storage/products/thumbnails/2147890-1-300x300.png"
        },
        "stock_status": "outofstock",
        "stock_quantity": null
    },
    {
        "name": "Center",
        "description": "<p>Mjölkchokladpralin med toffeefyllning</p>\n<p>Innehållsförteckning: Socker, glukossirap, kakaosmör, vegetabiliska fetter (palm, shea), HELMJÖLKSPULVER, kakaomassa, SKUMMJÖLKSPULVER, VASSLEPULVER (MJÖLK), salt, aromer (bl.a. vanillin), emulgeringsmedel (SOJALECITIN).</p>\n<p>Kan innehålla NÖTTER.</p>\n<p><em>Alla priser är per skopa.</em></p>\n",
        "price": 8,
        "images": {
            "large": "/storage/products/200423.png",
            "thumbnail": "/storage/products/thumbnails/200423-300x300.png"
        },
        "stock_status": "instock",
        "stock_quantity": 13
    },
    {
        "name": "Chokladpopcorn",
        "description": "<p>Innehållsförteckning: Socker, kakaosmör, kakaomassa, MJÖLKSOCKER (LAKTOS), HELMJÖLKSPULVER, majs, VASSLEPULVER (av MJÖLK), kokos- och raps fett, mjölkfett, sirap, emulgeringsmedel (E322), SOJALECITIN, kokosolja, ytbehandlingsmedel, E414 (gummi arabikum).</p>\n<p>Kan innehålla MANDEL, HASSELNÖT, CASHEWNÖT och VETE.</p>\n<p><em>Alla priser är per skopa.</em></p>\n",
        "price": 10,
        "images": {
            "large": "/storage/products/3697328.png",
            "thumbnail": "/storage/products/thumbnails/3697328-300x300.png"
        },
        "stock_status": "instock",
        "stock_quantity": 6
    },
    {
        "name": "Daim",
        "description": "<p>Chokladdoppad krokant</p>\n<p>Innehållsförteckning: Socker, palmolja, kakaosmör, kakaomassa, vasslepulver (MJÖLK), SKUMMJÖLKSPULVER, MANDEL(2.9%), SMÖRFETT, vassleprodukt (MJÖLK), sockrad kondenserad SKUMMJÖLK, salt, emulgeringsmedel (SOJALECITIN), aromer.</p>\n<p><em>Alla priser är per skopa.</em></p>\n",
        "price": 6,
        "images": {
            "large": "/storage/products/144085.png",
            "thumbnail": "/storage/products/thumbnails/144085-300x300.png"
        },
        "stock_status": "instock",
        "stock_quantity": 2
    },
    {
        "name": "Fazermint",
        "description": "<p>Chokladkonfekt med mintfyllning</p>\n<p>Innehållsförteckning: Socker, kakaomassa, glukossirap, kakaosmör, MJÖLKFETT, emulgeringsmedel (lecitin, bl.a. SOJA), aromer, enzym (invertas).</p>\n<p>Kan innehålla MJÖLK, NÖTTER, MANDLAR och VETE.</p>\n<p><em>Alla priser är per skopa.</em></p>\n",
        "price": 6,
        "images": {
            "large": "/storage/products/200408.png",
            "thumbnail": "/storage/products/thumbnails/200408-300x300.png"
        },
        "stock_status": "instock",
        "stock_quantity": 8
    },
    {
        "name": "Ferrari",
        "description": "<p>Vingummi med hallonsmak</p>\n<p>Innehållsförteckning: Socker, glukossirap, modifierad majsstärkelse, gelatin, aromämne, surhetsreglerande medel (citronsyra), färgämne (karmin), vegetabilisk olja (kokos, raps), ytbehandlingsmedel (karnaubavax).</p>\n<p><em>Alla priser är per skopa.</em></p>\n",
        "price": 10,
        "images": {
            "large": "/storage/products/200361.png",
            "thumbnail": "/storage/products/thumbnails/200361-300x300.png"
        },
        "stock_status": "instock",
        "stock_quantity": 5
    },
    {,
        "name": "Guldbamsar",
        "description": "<p>Vingummi med fruktsmaker</p>\n<p>Innehållsförteckning: Glukossirap, socker, gelatin, druvsocker, fruktjuice från koncentrat: äpple, jordgubbar, hallon, apelsin, citron, ananas, syra: citronsyra, frukt- och plantkoncentrat: safflor, spirulina, äpple, fläderbär, apelsin, svarta vinbär, kiwi, citron, aronia, mango, passionsfrukt, vindruva, arom, extrakt av fläderbär, palmolja: ytbehandlingsmedel: bivax vitt och gult, karnaubavax.</p>\n<p>Kan innehålla VETE.</p>\n<p><em>Alla priser är per skopa.</em></p>\n",
        "price": 10,
        "images": {
            "large": "/storage/products/173457.png",
            "thumbnail": "/storage/products/thumbnails/173457-300x300.png"
        },
        "stock_status": "instock",
        "stock_quantity": 9
    },
    {,
        "name": "Kinder Maxi",
        "description": "<p>MJÖLKCHOKLAD MED EN MJÖLKFYLLNING</p>\n<p>Innehållsförteckning: MJÖLKCHOKLAD 39% (socker, HELMJÖLKSPULVER, kakaosmör, kakaomassa, emulgeringsmedel: lecitiner (SOJA), vanillin), socker, SKUMMJÖLKSPULVER, palmolja, SMÖRKONCENTRAT, emulgeringsmedel: lecitiner (SOJA), vanillin.</p>\n<p><em>Alla priser är per skopa.</em></p>\n",
        "price": 7,
        "images": {
            "large": "/storage/products/2102365.png",
            "thumbnail": "/storage/products/thumbnails/2102365-300x300.png"
        },
        "stock_status": "outofstock",
        "stock_quantity": null
    }
]
*/