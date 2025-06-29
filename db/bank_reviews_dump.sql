--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: banks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banks (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.banks OWNER TO postgres;

--
-- Name: banks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.banks_id_seq OWNER TO postgres;

--
-- Name: banks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banks_id_seq OWNED BY public.banks.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    id integer NOT NULL,
    review text NOT NULL,
    rating integer NOT NULL,
    date date NOT NULL,
    bank_id integer,
    source text,
    sentiment_label text,
    sentiment_score double precision
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reviews_id_seq OWNER TO postgres;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: banks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks ALTER COLUMN id SET DEFAULT nextval('public.banks_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Data for Name: banks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banks (id, name) FROM stdin;
1	Bank of Abyssinia
2	Commercial Bank of Ethiopia
3	Dashen Bank
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviews (id, review, rating, date, bank_id, source, sentiment_label, sentiment_score) FROM stdin;
1	it's not working	3	2025-06-05	1	Google Play	negative	0.9997857213020324
2	Hello, IΓÇÖm facing a problem with the BOA Mobile app. Every time I enter my phone number and password, the app crashes and shows an error that says ΓÇ£BoaMobile closed because this app has a bug.ΓÇ¥ I tried updating, reinstalling, and clearing cache, but nothing worked. Please fix this bug in the next update. I really need access to my account. Thank you.	1	2025-06-03	1	Google Play	negative	0.999415159225464
3	exceptional	5	2025-06-03	1	Google Play	positive	0.9998514652252196
4	BoA Mobile good bank	5	2025-06-02	1	Google Play	positive	0.9984728693962096
5	this is worest app 24/7 loading	1	2025-06-01	1	Google Play	negative	0.993474304676056
6	This App is not interest for Android phone Please update it .	1	2025-06-01	1	Google Play	negative	0.9971383810043336
7	BoA system is confartable	5	2025-06-01	1	Google Play	negative	0.9980142116546632
8	this app, for me , is a waste of time. It doesn't work . I can't even long in, and it really piss me off. FIX THE PROBLEM	1	2025-05-27	1	Google Play	negative	0.99980491399765
9	Good service.	3	2025-05-25	1	Google Play	positive	0.9998533725738524
10	the app crush frequently	1	2025-05-24	1	Google Play	negative	0.998525083065033
11	good	5	2025-05-22	1	Google Play	positive	0.999816119670868
12	You guys keeps getting worst	1	2025-05-22	1	Google Play	negative	0.9997075200080872
13	This app is a joke. It crashes more than it works, takes forever to load, and half the features are just decorative at this point. CanΓÇÖt log in, canΓÇÖt transfer money, canΓÇÖt even check my balance without it bugging out. To the developer: Are you actually trying to make this work, or is this some kind of social experiment to test our patience? Did you build this in your sleep? Because it definitely looks like it. If this is your idea of a functional app, maybe consider a different career path≡ƒÖÅ	1	2025-05-21	1	Google Play	negative	0.999026656150818
14	BoA	2	2025-05-20	1	Google Play	negative	0.7410509586334229
15	but not opening on android	4	2025-05-19	1	Google Play	negative	0.9952228665351868
16	Worst App ever. Totally unreliable. And it didn't work at all for the last 4 months.	1	2025-05-18	1	Google Play	negative	0.9997984766960144
17	amazing	5	2025-05-18	1	Google Play	positive	0.999875545501709
18	excellent app	4	2025-05-16	1	Google Play	positive	0.9998356103897096
19	excellent	5	2025-05-15	1	Google Play	positive	0.9998434782028198
20	ßê₧ßêïßï¼ ßè¿ßëáßï░	5	2025-05-14	1	Google Play	negative	0.7850579619407654
21	this app does no work on Samsung a51, it just gives a preview of the logo	1	2025-05-11	1	Google Play	negative	0.9992283582687378
22	nice	5	2025-05-10	1	Google Play	positive	0.9998552799224854
23	i entered incorrect security question by mistake boa app lock pin forever, why is there no other options? ?? i contacted different branchs more then 4times but they didn't able to solve this issue .	5	2025-05-10	1	Google Play	negative	0.9994921684265136
24	Best app	5	2025-05-09	1	Google Play	positive	0.999686598777771
25	liking this application good ≡ƒæì	5	2025-05-07	1	Google Play	positive	0.9996829032897948
26	This app future is good, but there is problems with apps to reset and activate it, which is difficult even to the branch staffs, and it takes too long times to active at the branch plus most of the time high expected failure of activation after process at the counter and OTP sent not work	1	2025-05-06	1	Google Play	negative	0.9989790916442872
27	good	4	2025-04-30	1	Google Play	positive	0.999816119670868
28	wow	5	2025-04-28	1	Google Play	positive	0.999592125415802
29	it's really good ≡ƒæì	5	2025-04-23	1	Google Play	positive	0.9998701810836792
30	Bad app . it stuck when you open and noting WORKS.	1	2025-04-23	1	Google Play	negative	0.9995198249816896
31	the app isn't working after it asked me the password it starts loading, but it doesn't open	3	2025-04-20	1	Google Play	negative	0.9997255206108092
32	Best	2	2025-04-19	1	Google Play	positive	0.9997941851615906
33	It keeps showing this pop up to turn off developer options even tho it's off! I had to turn on and then off to make it work! This is a horrible experience and needs a fix asap! Plus kinda slow.	1	2025-04-19	1	Google Play	negative	0.999669909477234
34	yideg	1	2025-04-18	1	Google Play	negative	0.7675832509994507
35	ßèáßï¡ßè¿ßììßë╡ßê¥ ßèÑßè«	1	2025-04-17	1	Google Play	negative	0.7850579619407654
36	great boa	5	2025-04-10	1	Google Play	positive	0.9992689490318298
37	Best	5	2025-04-10	1	Google Play	positive	0.9997941851615906
38	boa of mobile backing	5	2025-04-09	1	Google Play	negative	0.980626106262207
39	faster bank of Abissinya	5	2025-04-08	1	Google Play	positive	0.9722140431404114
40	i would have given it a lower if it was possible because it crush so much and it take the bank so long to fix the bug	1	2025-04-08	1	Google Play	negative	0.9996716976165771
41	it just doesn't work...so frustrating	1	2025-04-07	1	Google Play	negative	0.999774158000946
42	like	5	2025-04-06	1	Google Play	positive	0.9910564422607422
43	it's not work correctly... you must have update it	1	2025-04-06	1	Google Play	negative	0.9998013377189636
44	the app gets a considerable improvements like language , QR scanner and unlimited transfers survice. but BOA Please do alot on its fastness and convenient when we login and making a transactions.	5	2025-04-04	1	Google Play	positive	0.9575355648994446
45	after i typed in my password it says successfully logged out ...and goes back to the first page	2	2025-04-04	1	Google Play	negative	0.5856828093528748
46	good but they don't update enough don't add new things	3	2025-04-04	1	Google Play	negative	0.969367742538452
47	very good	5	2025-04-03	1	Google Play	positive	0.9998520612716676
48	thank you	5	2025-04-02	1	Google Play	positive	0.9998352527618408
49	it doesn't work period z slowest mobile banking ever i would rather use *815#	1	2025-04-01	1	Google Play	negative	0.9990907907485962
50	after activated the application it not allowed to sign , automatically it is turn off In my phone, why ?	1	2025-03-31	1	Google Play	negative	0.9973751306533812
51	good application	5	2025-03-30	1	Google Play	positive	0.999854564666748
52	this version is not working for me I cannot even buy card. I cannot send money	1	2025-03-30	1	Google Play	negative	0.9995684027671814
53	It can't actively on initialization, it says incorrect OTP getting the exact OTP	1	2025-03-29	1	Google Play	negative	0.9996182918548584
54	always problematic hardly works	1	2025-03-26	1	Google Play	negative	0.99955552816391
55	considering the fact the bank is huge this app really bad you could do better	1	2025-03-25	1	Google Play	negative	0.9997418522834778
56	best app	5	2025-03-25	1	Google Play	positive	0.999686598777771
57	worst app and Bank ever u be ashamed, scammer	1	2025-03-24	1	Google Play	negative	0.9998050332069396
58	great BoA	5	2025-03-22	1	Google Play	positive	0.9992689490318298
59	best	5	2025-03-21	1	Google Play	positive	0.9997941851615906
60	i have went to the bank so many times because i couldn't make any transaction i can only see my balance nothing else so what is the point of having mobile banking if i can't make any transaction with it please work in that	1	2025-03-21	1	Google Play	negative	0.9988333582878112
61	there is no speed	1	2025-03-19	1	Google Play	negative	0.9994422793388368
62	For anyone who wants to download it, just don't!!!	1	2025-03-19	1	Google Play	negative	0.999398112297058
63	wonderful	5	2025-03-19	1	Google Play	positive	0.9998772144317628
64	all worck	5	2025-03-19	1	Google Play	negative	0.9971314668655396
65	Loved it	5	2025-03-14	1	Google Play	positive	0.9998797178268432
66	Wow	1	2025-03-14	1	Google Play	positive	0.999592125415802
67	Edit: New bug, app not letting me type in my otp codes. Shameful Why does this app not allow me to use it while having developer options on? Did y'all consider that I might, perhaps, be an actual developer? Why am I expected to toggle the option on and off just to bank (restarting my phone when I do)? Why is the message labled as somthing that will "smoothen" the experience? This is like the most "security consultant" thing to implement in an app. Please invest in actual security, not this mess.	1	2025-03-12	1	Google Play	negative	0.9985970854759216
68	Improved to be the best	5	2025-03-11	1	Google Play	positive	0.9998570680618286
69	BoA	5	2025-03-11	1	Google Play	negative	0.7410509586334229
70	Decent, but there problems sometimes it says error When i transfer money but infact it transferred because of this bug i transferred 2 times instead of 1 and also we can't transfer money to others telebirr acc we only can to our self BOE Dev fix this !!!	3	2025-03-11	1	Google Play	negative	0.99748432636261
71	BoA Greqt Ethiopian bank.	5	2025-03-11	1	Google Play	negative	0.8457719683647156
72	The bug is still there,the app crashes every time i try to log in, especially in old phones like my Galaxy A32	1	2025-03-10	1	Google Play	negative	0.9994600415229796
73	Almost better compared to cbe where it is not qualified for	4	2025-03-09	1	Google Play	negative	0.974167823791504
74	what awesome apps. it is very simple to use and more much important apps.	5	2025-03-09	1	Google Play	positive	0.9998214840888976
75	Wonderfull app	5	2025-03-08	1	Google Play	positive	0.9998815059661864
76	i can't use this app why?	5	2025-03-07	1	Google Play	negative	0.9993101358413696
77	Worst mobile banking app I ever experienced I was blaming other apps but comparing with this they're too much better!!!! It clashes it takes much longer time to login while loading in short it's a complete of trash	1	2025-03-06	1	Google Play	negative	0.9997013211250304
78	Wow	4	2025-03-05	1	Google Play	positive	0.999592125415802
79	bro the worst app made by human kind!! as a software engineer it make me so sad seeing enterprise as big as BOA make apps like this. it is a disgrace for our country!!	1	2025-03-05	1	Google Play	negative	0.9998133778572084
80	AGA B Girja Miss language of admin Afaan oromo & other Itoophiyaa languages	1	2025-03-04	1	Google Play	negative	0.9959415793418884
81	Good app	5	2025-03-03	1	Google Play	positive	0.9998493194580078
82	I downloaded the app for the first time while reading other customers reviews and as soon as i installed and opened the app it closes back automatically, what unserious bank, now i uninstalled the app immediately	1	2025-03-03	1	Google Play	negative	0.9916398525238036
83	It has good features but sometimes it doesn't work...0	1	2025-03-02	1	Google Play	negative	0.9956711530685424
84	Very poor proformance	1	2025-03-01	1	Google Play	negative	0.9998043179512024
85	It's not opening. Really frustrating	1	2025-03-01	1	Google Play	negative	0.9997020363807678
86	Verry Amazing App from all IB	5	2025-03-01	1	Google Play	positive	0.9997394680976868
87	Not working on this days	1	2025-02-26	1	Google Play	negative	0.9972773194313048
88	Thank you BoA	5	2025-02-23	1	Google Play	positive	0.9998399019241332
89	best banking app in the wworld	5	2025-02-22	1	Google Play	positive	0.999572217464447
90	Nice app and it's easy to use	5	2025-02-21	1	Google Play	positive	0.999751627445221
91	please add language in the apps setting(amharic afan oromo, tigniya,and others) sometimes bank to bank transfer is not available through time and even if if it is available not reachableΓÇªit is serious issue!	1	2025-02-15	1	Google Play	negative	0.999267876148224
92	This is help full i like ittttt	5	2025-02-14	1	Google Play	positive	0.9977995753288268
93	The is not functional at all?	2	2025-02-12	1	Google Play	negative	0.9997331500053406
94	Best bank	5	2025-02-08	1	Google Play	positive	0.9997438788414
95	Make it easy and convienient to use and perfect for all to high prefrence and choice.	3	2025-02-07	1	Google Play	positive	0.9997236132621764
96	≡ƒç¬≡ƒç╣≡ƒç¬≡ƒç╣≡ƒç¬≡ƒç╣≡ƒç¬≡ƒç╣≡ƒç¬≡ƒç╣≡ƒç¬≡ƒç╣≡ƒæì≡ƒæì≡ƒæì≡ƒæì≡ƒæì≡ƒæì≡ƒæì	5	2025-02-04	1	Google Play	negative	0.6970561146736145
97	I have been using this app for two years.It is amazing.	5	2025-02-01	1	Google Play	positive	0.9998595714569092
98	Good ≡ƒæì	5	2025-01-31	1	Google Play	positive	0.9998576641082764
99	Sad experience	1	2025-01-30	1	Google Play	negative	0.999068796634674
100	Always do update and that is annoying	3	2025-01-27	1	Google Play	negative	0.9994439482688904
101	Best app, somehow waiting a few minutes	5	2025-01-23	1	Google Play	negative	0.6387032866477966
102	I can't dijitalize my atm in the apollo app on my phone	1	2025-01-22	1	Google Play	negative	0.9946038126945496
103	Whenever I try to sign in app close please fixed it out	2	2025-01-21	1	Google Play	negative	0.997660994529724
104	Beter	5	2025-01-21	1	Google Play	positive	0.6771957278251648
105	Boa	4	2025-01-18	1	Google Play	negative	0.7410509586334229
106	ßëáßîúßê¥ ßï¿ßêÜßï½ßê╡ßîáßêï ßèáßìò ßëáßîúßê¥ ßï¿ßïêßê¿ßï░ ßï£ßê« ßèÉßïì ßï¿ßê¥ßê░ßîáßïì ßïÿßê« It's not App it's very slow ehhhh. Why don't you upgrade the app???? It's always zero	1	2025-01-18	1	Google Play	negative	0.9979276657104492
107	Aadan Axmed Barkhadle	5	2025-01-17	1	Google Play	positive	0.6127505898475647
108	≡ƒÿí≡ƒÿí≡ƒÿí≡ƒñ¼≡ƒñ¼≡ƒñ¼	1	2025-01-16	1	Google Play	negative	0.6970561146736145
109	Horrible customer service and app crashes Horrible!!	1	2025-01-15	1	Google Play	negative	0.9997913241386414
110	I love it	5	2025-01-14	1	Google Play	positive	0.9998799562454224
111	It keeps asking me to turn off developer mode even when dev mode is off. Couldn't use it.	1	2025-01-13	1	Google Play	negative	0.9985793828964232
112	Good≡ƒÖÅ	5	2025-01-12	1	Google Play	negative	0.6970561146736145
113	Like to much	5	2025-01-11	1	Google Play	positive	0.9997984766960144
114	Thank you	5	2025-01-10	1	Google Play	positive	0.9998352527618408
115	Perfect	5	2025-01-09	1	Google Play	positive	0.9998517036437988
116	The best of best	5	2025-01-09	1	Google Play	positive	0.9998393058776855
117	I was using this app for long time it amazing user friendly UI but the i can't found for get pin button in the app	3	2025-01-07	1	Google Play	negative	0.901660144329071
118	Boa	5	2025-01-06	1	Google Play	negative	0.7410509586334229
119	Great ≡ƒæì	5	2025-01-04	1	Google Play	positive	0.9997692704200744
120	Fast and suitable for the customers.	5	2025-01-04	1	Google Play	positive	0.9997920393943788
121	Good app and helpful	5	2025-01-03	1	Google Play	positive	0.9998565912246704
122	I will give only one star, because it faced with multiple of problems. 1. The app is not as fast as the other banks App, for e.g like CBE 2. The App asks repeatedly to switch off developer options, even if it is switched off. 3. Bank of Abyssinia's services are interesting, but they ignored the issues on the App service. 4. Most customers gave a complain on the App, but no one accept their complain to fix the issue. 5. Lastly, I will not recommend the App unless the issue has been solved ASAP!!	1	2025-01-03	1	Google Play	negative	0.9978498220443726
123	By assessing this you can tell Abyssinia bank has no idea what mobile banking is ?	1	2025-01-02	1	Google Play	negative	0.9992759823799132
124	It doesn't work at all.	2	2025-01-02	1	Google Play	negative	0.9997771382331848
125	this app is not available	1	2025-01-02	1	Google Play	negative	0.9997593760490416
126	Wow what amazing	5	2024-12-30	1	Google Play	positive	0.9998555183410645
127	love it	5	2024-12-30	1	Google Play	positive	0.99987530708313
128	ßëáßîúßê¥ ßêÿßê╗ßê╗ßêì ßèáßêêßëáßë╡....... ßêê ßëúßèòßè⌐ ßê¢ßï¡ßêÿßîÑßèò ßêÿßë░ßîìßëáßê¡ßï½ ßèÉßïì ::	2	2024-12-30	1	Google Play	negative	0.9733066558837892
129	Lemn embi yilal??	5	2024-12-30	1	Google Play	negative	0.990697145462036
130	Good	5	2024-12-30	1	Google Play	positive	0.999816119670868
131	It's useless app downgraded.	1	2024-12-29	1	Google Play	negative	0.999807059764862
132	Why is not letting me access my account. The whole point of this app is for me to gey access to my account without physically being at the bank. I would give it a zero but a one will suffice to get my point accross.	1	2024-12-27	1	Google Play	negative	0.7652336359024048
133	Nice	5	2024-12-26	1	Google Play	positive	0.9998552799224854
134	When are you going to get rid of this and have a real app that works? By far the worst mobile banking app.	1	2024-12-24	1	Google Play	negative	0.9997933506965636
135	ßèáßï¡ßê░ßê½ßê¥ ßê╝ßê¥ ßèÉßïìßìñ	1	2024-12-23	1	Google Play	negative	0.8616324663162231
136	Not that much bad	3	2024-12-22	1	Google Play	positive	0.998815894126892
137	Fine	5	2024-12-21	1	Google Play	positive	0.9998335838317872
138	The dirtiest application ever seen...	1	2024-12-20	1	Google Play	negative	0.995487630367279
139	Nic ap	5	2024-12-19	1	Google Play	positive	0.9873362183570862
140	The forest app ever	1	2024-12-19	1	Google Play	positive	0.9840953946113586
141	I love BoA more than anyone but they are cursed when it comed to mobile banking. Even though this ine is hetter it still s*cks! It will ask me to turn off developer options other wise it won't work! I use CBE, Awash birr, tekebirr, Dashen bank and others but non of them asked me this, why only BoA? Please improve your mobile banking, be competitive!	1	2024-12-19	1	Google Play	negative	0.9967040419578552
142	Bank of abissena	1	2024-12-17	1	Google Play	positive	0.948011875152588
143	Good	3	2024-12-16	1	Google Play	positive	0.999816119670868
144	Easy and sooo simple to use it, also its easy to stole someones money using the app	3	2024-12-16	1	Google Play	negative	0.9888866543769836
145	GOOD	5	2024-12-15	1	Google Play	positive	0.999816119670868
146	The worst banking app ever. Never works!	1	2024-12-14	1	Google Play	negative	0.999800741672516
147	Poorly functioning app	3	2024-12-13	1	Google Play	negative	0.999775230884552
148	Very nice	5	2024-12-13	1	Google Play	positive	0.9998563528060912
149	Your system is the worst you should do better≡ƒÿí≡ƒÿí≡ƒÿí≡ƒÿí≡ƒÿí≡ƒÿí	2	2024-12-11	1	Google Play	negative	0.999800741672516
150	It has been a while since you guys started giving the mobile app service but still couldn't get it to work. I'm sure you know that it doesn't work already but not sure if you're lazy or incompetent to fix it. You are losing business because of this. Complacency will have consequences.	1	2024-12-10	1	Google Play	negative	0.9997615218162536
151	This is the best app; many features are awesome, but it should work without the need to turn off the developer options. I'm tired of having to constantly switch the developer options off and on. I've been expressing my struggles about this. I have precious settings enabled in the developer options, and to open the App Boa app, I have to turn them off. Please help us, Abyssinia Bank. I hope you can provide an update soon.	4	2024-12-08	1	Google Play	positive	0.9543284177780152
152	IΓÇÖm giving this app one star because there are no options below that. My experience has been incredibly frustrating due to the extremely long loading times, and the app even closes automatically at times. People choose mobile banking for its convenience, but this app is far too time-consuming, making it the worst IΓÇÖve used. I hope improvements are made to enhance the user experience.	1	2024-12-07	1	Google Play	negative	0.9997000694274902
153	Very unprofessional and mischievous bank in my opinion. I have had several occasions but recently I used Abyssinia Card to withdraw money and it was deducted from my account but despite reporting several times they said they are processing it but I learned yesterday that since it has been 3 months the bank has decided to include it in their income. How absurd. If you can avoid this bank.	1	2024-12-06	1	Google Play	negative	0.9941067695617676
154	It doesn't work on my 2 devices A05 and A34 ≡ƒÿí	1	2024-12-02	1	Google Play	negative	0.9996792078018188
155	It's better to say I don't use boa rather than pulling your phone out and opening this app	1	2024-12-01	1	Google Play	negative	0.9981752634048462
156	My attention is very important because it will be the most difficult time for me	5	2024-11-30	1	Google Play	positive	0.992617666721344
157	I have a worst experience while using this mobile application through out the year. Most of the time it fails to "Login" or automatically closed the app. And also it takes so much loading time (5 minutes +) trying to access the internal services. Sometimes also while transferring within and to other bank also fails. So, BOA please fix your app.	1	2024-11-29	1	Google Play	negative	0.999800145626068
158	I don't know why but your apps start out great then all of a sudden don't work≡ƒñ╖ΓÇìΓÖÇ∩╕Å	1	2024-11-28	1	Google Play	positive	0.8064287900924683
159	This application is losing major factions on a daily basis. I can count how many times I have used this app; it is completely useless and disappointing if I am not going to use it in times of need then I don't see the point.	1	2024-11-28	1	Google Play	negative	0.99979966878891
160	exellent digital transaction of money	5	2024-11-27	1	Google Play	negative	0.994447946548462
161	The latest update has stopped android 9 phones not to open this App. Never work properly since i started using it.	1	2024-11-26	1	Google Play	negative	0.999749720096588
162	Great	5	2024-11-25	1	Google Play	positive	0.9998630285263062
163	≡ƒæÅ≡ƒæÅ≡ƒæÅ	5	2024-11-24	1	Google Play	negative	0.6970561146736145
164	Money	5	2024-11-24	1	Google Play	positive	0.9659327268600464
165	It needs more improvment	2	2024-11-24	1	Google Play	negative	0.998616099357605
166	Hey Google	5	2024-11-21	1	Google Play	positive	0.9950044751167296
167	ab	3	2024-11-20	1	Google Play	positive	0.960319757461548
168	Ademtahir	5	2024-11-20	1	Google Play	positive	0.9930111765861512
169	Γ£î∩╕ÅΓ£î∩╕Å	5	2024-11-20	1	Google Play	negative	0.6970561146736145
170	Please this app on my android phone	3	2024-11-20	1	Google Play	positive	0.6488653421401978
171	GOAT ≡ƒÉÉ ≡ƒÉÉ	5	2024-11-19	1	Google Play	negative	0.9337345957756042
172	Your app doesn't match your bank, the app is disaster, super slow. Please learn something from tele birr app.	1	2024-11-19	1	Google Play	negative	0.9994460940361024
173	Fast and reliable	5	2024-11-18	1	Google Play	positive	0.9998595714569092
174	The worst app update ever. Why would you include the "developer option off" thing here? Why do you care? It is my phone my money, right? That is the reason why I switched to other banks. So either turn it off or everyone will discontinue their business one by one.	1	2024-11-17	1	Google Play	negative	0.9998020529747008
175	Very good	5	2024-11-14	1	Google Play	positive	0.9998520612716676
176	One of the poorest mobile banking system	1	2024-11-13	1	Google Play	negative	0.999756634235382
177	Γ¥ñΓ¥ñΓ¥ñΓ¥ñΓ¥ñΓ¥ñ	5	2024-11-12	1	Google Play	negative	0.6970561146736145
178	Oene	5	2024-11-12	1	Google Play	positive	0.8278868198394775
179	i find it interesting specially in reciept downloading	1	2024-11-12	1	Google Play	positive	0.9981314539909364
180	it good	5	2024-11-12	1	Google Play	positive	0.9998427629470824
181	This app crashes everytime, please fix it	1	2024-11-12	1	Google Play	negative	0.9996472597122192
182	ßèáßèòßï╡ star ßê½ßê▒ ßï¡ßëáßï¢ßëáßë│ßêìßìó i dont recomend to use this app also the bank	1	2024-11-12	1	Google Play	negative	0.9964038133621216
183	I need a support the app is not working	5	2024-11-12	1	Google Play	negative	0.9998034834861756
184	Bast bank of ethiopia	5	2024-11-12	1	Google Play	positive	0.9978061318397522
185	very slow app. ßèáßëóßê▓ßèÆßï½ßèò ßè¿ßêÜßï½ßè¡ßêì ßëúßèòßè¡ ßï¿ßê¢ßï¡ßîáßëáßëà software app. ßè¿ßë╗ßêïßë╜ßêü ßêÖßêë ßêêßêÖßêë ßèÑßèòßï░ßîêßèô ßèáßê░ßê⌐ßë╡ßìóßëáßîúßê¥ ßï¡ßêÿßê½ßï½ßêì ßï½ßê│ßììßê½ßêìßìóßêêapp ßï¿ßïêßîúßïì ßïêßî¡ ßëáßêÖßê╡ßèô ßï¿ßë░ßëáßêï ßèÉßïì ßï¿ßêÜßêÿßê╡ßêêßïìßìó	1	2024-11-12	1	Google Play	negative	0.9990527033805848
186	thank you for your social services like, vertual banking, non touch ATM, Cadrless and withdrwal with out passbook...	5	2024-11-12	1	Google Play	positive	0.9878897070884703
187	The worst App i have never seen like this before	1	2024-11-12	1	Google Play	negative	0.999774158000946
188	Wweeeer	4	2024-11-12	1	Google Play	negative	0.8910730481147766
189	Infinx	5	2024-11-12	1	Google Play	negative	0.9042556881904602
190	Great service	5	2024-11-12	1	Google Play	positive	0.9998434782028198
191	≡ƒæì	5	2024-11-11	1	Google Play	negative	0.6970561146736145
192	This app is not available on all android versions and some times it is not functional.	1	2024-11-08	1	Google Play	negative	0.9997187256813048
193	senayt Mesfin	4	2024-11-08	1	Google Play	positive	0.8874820470809937
194	Bad app vety bad.	1	2024-11-07	1	Google Play	negative	0.9998058676719666
195	Abessnya Banke	5	2024-11-05	1	Google Play	negative	0.9873653054237366
196	The most useless app, I never expected such an irrelevant app from BOA. big shame!	1	2024-11-04	1	Google Play	negative	0.9997209906578064
197	Okay	5	2024-11-03	1	Google Play	positive	0.9997709393501282
198	Professional on banking app	5	2024-11-01	1	Google Play	positive	0.9616296291351318
199	Has some nice interface but always freezes or slow to load .App developers please fix this issue.	3	2024-10-27	1	Google Play	negative	0.993607759475708
200	ßèáßï¡ßê░ßê½ßê¥ ßèáßê╡ßë░ßè½ßè¡ßêëßë╡	5	2024-10-26	1	Google Play	negative	0.7850579619407654
201	Please try another because this app doesn't feet the need of this generation	1	2024-10-25	1	Google Play	negative	0.9962698221206664
202	Good	4	2024-10-25	1	Google Play	positive	0.999816119670868
203	Fast transfer	5	2024-10-24	1	Google Play	positive	0.9989985823631288
204	What's up I can't log in, what's wrong	5	2024-10-22	1	Google Play	negative	0.9989662170410156
205	Amrumehamed	1	2024-10-21	1	Google Play	positive	0.6924071311950684
206	Nice to meet you my proud bank in Ethiopia.. I'm a member of this bank, i need to solve my problem of international receiving money for me from my online digital working service's over the world please? I'm working a lot of international money.But i can't get direct in Ethiopia because of don't knowing the legal ways of getting money in Ethiopia please can I get and direct deposit with BoA please ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ?	5	2024-10-18	1	Google Play	positive	0.968373954296112
207	ßï░ßï░ßîêßèÉßêÉ	5	2024-10-15	1	Google Play	negative	0.6970561146736145
208	Terrible Bank Experience ItΓÇÖs unbelievable that with all the modern technology, this bank still struggles with even basic transactions. The app constantly crashes, services are limited, and every time I try to transfer money or load Telebirr, thereΓÇÖs a huge delay. I have to wait 5 days for failed transactions to be refunded! Even USSD is unreliable. TheyΓÇÖve put me in embarrassing situations countless times, and customer care never fixes anything. IΓÇÖve switched banks, and you should too!	1	2024-10-14	1	Google Play	negative	0.9995194673538208
209	A painfully slow banking app service. Please don't make it your choice!	1	2024-10-13	1	Google Play	negative	0.999660849571228
210	Good App	4	2024-10-12	1	Google Play	positive	0.9998493194580078
211	Best app to me	5	2024-10-11	1	Google Play	positive	0.997821807861328
212	BOA	5	2024-10-11	1	Google Play	negative	0.7410509586334229
213	Abdulkadir	5	2024-10-11	1	Google Play	positive	0.981449544429779
214	Bad	1	2024-10-10	1	Google Play	negative	0.999782383441925
215	If it is possible I would gove0 star	1	2024-10-08	1	Google Play	negative	0.9928192496299744
216	Nise mobile bankig	4	2024-10-05	1	Google Play	negative	0.9858755469322203
217	Overall good app but performance needs some improvement also sometimes when using instant other bank transfers it refuses causing to be repeated several times to transfer	4	2024-10-04	1	Google Play	negative	0.953279197216034
218	Ok	5	2024-10-04	1	Google Play	positive	0.9997851252555848
219	Just make it work please≡ƒñú this is embarrassing for a bank of your size	1	2024-10-04	1	Google Play	negative	0.999284327030182
323	The worst app	1	2024-07-28	1	Google Play	negative	0.9997969269752502
220	Update to the simplest way it requires the developer option on and off why this is	5	2024-10-04	1	Google Play	negative	0.998016357421875
221	Stop telling me what to do with my phone, BOA. Why does your newly updated app keep asking me to disable the developer options? IΓÇÖm not slowing down my phone just to use your God damn app. ≡ƒñ«≡ƒñ«≡ƒñ«≡ƒñ«	1	2024-10-04	1	Google Play	negative	0.9964292645454408
222	I'm living out of country how may I download and use mobile banking? It asks me the Ethiopia phone number and I can't receive text to confirm because I'm out side the country. So please lete know if I can use while I'm outside the country. Thanks	1	2024-10-04	1	Google Play	negative	0.6597328782081604
223	Worest app	1	2024-10-03	1	Google Play	negative	0.7789770364761353
224	The worest app ever	1	2024-10-03	1	Google Play	positive	0.9535900950431824
225	ßèáßê¬ßìì ßèÉßïì ßëáßê¡ßë▒ßêìßèò	5	2024-10-03	1	Google Play	negative	0.8337247967720032
226	Wwwerrr	5	2024-10-02	1	Google Play	negative	0.850250780582428
227	ßîÇßê¢ßêì ßïìßëÇßë▒	5	2024-09-30	1	Google Play	negative	0.7850579619407654
228	Great For Financial company	5	2024-09-30	1	Google Play	positive	0.9998703002929688
229	Very easy to use	5	2024-09-30	1	Google Play	positive	0.999142289161682
230	The App's crash always.. Error.....	3	2024-09-27	1	Google Play	negative	0.9996880292892456
231	This app is incredibly frustrating to use. ItΓÇÖs filled with issues that make it difficult to navigate and complete tasks efficiently. IΓÇÖve never encountered such a poorly designed banking application before. It needs significant improvements to enhance user experience. It deserves a vey low rating.	1	2024-09-26	1	Google Play	negative	0.998582124710083
232	Great UI and seamless UX. I love it!!	5	2024-09-25	1	Google Play	positive	0.9998557567596436
233	That's too good application but try to add more alternatives and futures or possibilitys for your customers	3	2024-09-25	1	Google Play	negative	0.9941336512565612
234	It's easy used to operate program and secured ≡ƒæì≡ƒæì	4	2024-09-25	1	Google Play	negative	0.9652975797653198
235	I bought a mobile card on this app but I didn't receive it and it took my money and I didn't get my money back.	1	2024-09-21	1	Google Play	negative	0.9994741082191468
236	Amazing	5	2024-09-19	1	Google Play	positive	0.999875545501709
237	Great app with great services	5	2024-09-19	1	Google Play	positive	0.9998226761817932
238	Yes active user	5	2024-09-17	1	Google Play	positive	0.9983929991722108
239	Shameful	1	2024-09-17	1	Google Play	negative	0.998016357421875
240	The worest app ever made i would not recommende for no one	1	2024-09-16	1	Google Play	negative	0.5611279010772705
241	Good application	5	2024-09-16	1	Google Play	positive	0.999854564666748
242	I like	5	2024-09-16	1	Google Play	positive	0.9998149275779724
243	How many hours should I wait after transferring money to telebirr, please do something about the transfer delay issue I need my money when ever.	1	2024-09-15	1	Google Play	negative	0.9988893866539
244	BOA is unreasonably holding and delaying transactions for more than a day, even transactions within the same bank itself. This is a huge gap that I observed in BOA mobile banking. I didn't experience this kind of challenge while having transactions in other banks' mobile banking platforms. After waiting so long, I called your customer support team and the response they gave me was "it was the system that holds the transaction & will be released on working days". This is not totally fair.	1	2024-09-15	1	Google Play	negative	0.9993953704833984
245	ßï¿ßèÑßê¡ßê╡ßïÄßèò ßë░ßê₧ßè¡ßê« ßï¡ßîìßêêßî╣ (ßèáßê¢ßê½ßî¡)	5	2024-09-14	1	Google Play	negative	0.8698036074638367
246	It's not working. It needs a big update. Can't you update the app quickly?	1	2024-09-14	1	Google Play	negative	0.999777853488922
247	I am Aimohon Joel , It's can be Good for a Better Conversation in Time ≡ƒÖé	3	2024-09-14	1	Google Play	negative	0.9925205707550048
248	Better app than most mobile apps, but why do I have to turn off developer option every time I wanna use the app?? It's annoying.	1	2024-09-13	1	Google Play	negative	0.999325394630432
249	Bes and freindly app	5	2024-09-13	1	Google Play	negative	0.9136509895324708
250	It doesn't work.	1	2024-09-12	1	Google Play	negative	0.9997761845588684
251	It say "The request was not successful. please check device connectivity or try again" why? One of the bank manager told me it is because of my phone's android version which is 9.1 It is ridiculous! Disappointing	1	2024-09-11	1	Google Play	negative	0.9997968077659608
252	How to download or screenshot of payment receipt...what kinda worst app ever ≡ƒñ«≡ƒñ«≡ƒñó	1	2024-09-11	1	Google Play	negative	0.9998114705085754
253	Smart technology	5	2024-09-10	1	Google Play	positive	0.9998468160629272
254	Yegema app tish≡ƒ¬¿	1	2024-09-08	1	Google Play	negative	0.9501880407333374
255	This is not an appropriate app, i don't know how boa develops this app, i don't expect this much crazy and un confortable app form BOA, I'm soory!!!	1	2024-09-07	1	Google Play	negative	0.9996864795684814
256	Shockingly bad! Even when it decides to work, it's painfully slow and frustrating. Such a shame that it has become a stain on an extraordinary bank	1	2024-09-06	1	Google Play	negative	0.9997275471687316
257	It crashes frequently. It launches on Android 8.1 but I don't think it actually works on versions less than 10. If so, it shouldn't be available for download by such devices to begin with, like many other finance apps are not. It was so much better three months ago, upgrades should be for the better.	1	2024-09-06	1	Google Play	negative	0.999210000038147
258	Awesome application. But lately its crashing everytime i opened it.	4	2024-09-05	1	Google Play	negative	0.9127691984176636
259	ßèÑßîàßê¥ ßëáßîúßê¥ ßï░ßè½ßê¢ ßèáßìò ßèÉßïì ßê▓ßìêßêìßîì ßï¡ßè¿ßììßë│ßêì ßê▓ßìêßêìßîì ßèáßï¡ßè¿ßììßë╡ßê¥ ßè¿ßèáßïïßê╜ ßèÑßèô ßèòßîìßï╡ ßëúßèòßè¡ ßï¿ßêÿßê│ßê░ßêë ßëúßèòßè«ßë╜ ßê▓ßïêßï│ßï░ßê¡ ßê₧ßëúßï¡ßêì ßëúßèòßè¬ßèòßîì App ßèÑßîàßîì ßï¿ßêÜßï½ßëáßê│ßî¡ ßèÉßïì ßêêßïìßîÑ ßï½ßê╡ßìêßêìßîïßë╜ßèïßêì	1	2024-09-05	1	Google Play	negative	0.9639249444007874
260	Fast one	3	2024-09-04	1	Google Play	positive	0.9994491934776306
261	Nice looking app but a terrible user experience.	1	2024-09-03	1	Google Play	negative	0.9958102703094482
262	The worest MB app ever!!≡ƒÖä	1	2024-09-02	1	Google Play	negative	0.8734641075134277
263	It is ok	5	2024-09-01	1	Google Play	positive	0.9998496770858764
264	Plz fix the Apps ....screenshot lovation hide from glarey share botten not work≡ƒÿö≡ƒÿö	1	2024-08-30	1	Google Play	negative	0.9987314343452454
265	Apollo's	1	2024-08-29	1	Google Play	positive	0.9974138736724854
266	The worst experience ever	1	2024-08-29	1	Google Play	negative	0.999792754650116
267	Hussenaliumar	5	2024-08-29	1	Google Play	negative	0.6654510498046875
321	ßèáßëóßê╡ßèÆßï½ ßï¿ßêüßêëßê¥ ßê¥ßê¡ßî½	5	2024-07-29	1	Google Play	negative	0.8337247967720032
322	Nays	5	2024-07-28	1	Google Play	negative	0.9894011616706848
268	Hi I have problem with this App BOA mobile I don't know what is wrong with this App I did many times download but it's sam doesn't work if sam like that this app way I have to be customer with them how I know my account and checking save The book is no Not enough alone	1	2024-08-28	1	Google Play	negative	0.999367892742157
269	It is not work for my device	5	2024-08-27	1	Google Play	negative	0.9997636675834656
270	I'm Sick and tiered of enabling and disabling Developer Option Everytime I use this app. maybe you know it maybe you dont, fix it please it's anoying	1	2024-08-26	1	Google Play	negative	0.9990233182907104
271	The worst app ever	1	2024-08-26	1	Google Play	negative	0.9997934699058532
272	Betanya Gebre	3	2024-08-23	1	Google Play	positive	0.8911888003349304
273	I dont recommand it to any one	1	2024-08-23	1	Google Play	negative	0.9855505228042604
274	Excellent app	5	2024-08-21	1	Google Play	positive	0.9998356103897096
275	The application used to work well. But after updates I'm not able to use the forgot password feature, which is blocking me from accessing it as a whole.	1	2024-08-20	1	Google Play	negative	0.9988825917243958
276	ßë╡ßê¡ßêâßê╡	5	2024-08-19	1	Google Play	negative	0.6970561146736145
277	Gio	4	2024-08-19	1	Google Play	positive	0.9969680905342102
278	App isn't working	1	2024-08-18	1	Google Play	negative	0.9995692372322084
279	so far good but always it lugs	3	2024-08-17	1	Google Play	negative	0.982947051525116
280	Don't trust this bank and its service.	1	2024-08-16	1	Google Play	negative	0.99963116645813
281	I can not open and use the application,please help me!	5	2024-08-15	1	Google Play	negative	0.9995014667510986
282	Horrible	1	2024-08-14	1	Google Play	negative	0.9997841715812684
283	Mostly not working ≡ƒÿæ	1	2024-08-14	1	Google Play	negative	0.999582588672638
284	Awesome ≡ƒæî	5	2024-08-12	1	Google Play	positive	0.9998607635498048
285	Despite the enhanced technology you have, the application doesn't work properly, and it asks for the developer option to be turned off, fix that.	3	2024-08-12	1	Google Play	negative	0.9997915625572203
286	Thank you	3	2024-08-12	1	Google Play	positive	0.9998352527618408
287	Very poor app b/c highly slow to open the app	1	2024-08-12	1	Google Play	negative	0.9998080134391784
288	best	1	2024-08-12	1	Google Play	positive	0.9997941851615906
289	Wedi Tekle .	5	2024-08-11	1	Google Play	negative	0.8421279191970825
290	Bad app≡ƒô▒≡ƒæÄ≡ƒæÄ≡ƒæÄ	1	2024-08-11	1	Google Play	negative	0.9997676014900208
291	Dura nan fayyadaman ture amma garuu naaf hojjechaa hin jiru maaf?	5	2024-08-11	1	Google Play	negative	0.9956488013267516
292	Nice appp	5	2024-08-11	1	Google Play	positive	0.9997910857200624
293	ßê░ßêïßê¥ ßèáßëóßê▓ßèÆßï½ßïÄßë╜ ßï¿ßê₧ßëúßï¡ßêì ßëúßèòßè¬ßèòßîïßë╜ßêü ßë░ßîáßëâßêÜ ßèÉßè¥ ßèáßîêßêìßîìßêÄßë▒ßèò ßê╡ßêïßê╡ßîÇßêÿßê½ßë╜ßêüßêêßèò ßèÑßèôßêÿßê░ßîìßèôßêêßèòßìó ßèÉßîêßê¡ ßîìßèò ßèáßêêßìÄ ßèáßêìßìÄ ßï¿ßèÉßëáßê¿ßïì ßï¿ßê¢ßê╡ßìêßèòßîáßê¬ßï½ßïì ßëáßèáßîìßëúßëí ßèáßêêßêÿßê╡ßê½ßë╡ ßèáßêìßìÄ ßèáßêìßìÄ ßïêßï░ßêÿßê╡ßê½ßë╡ ßë░ßëÇßï¡ßê»ßêì ßï╡ßê« ßèÑßèòßï░ßèÉßëáßê½ßë╜ßêü ßèÑßèôßïìßëâßêêßèò ßïÿßèòßï╡ßê«ßê¥ ßëÑßë╡ßèûßê⌐ßêìßèò ßèÑßèòßêÿßê¡ßîúßêêßèò *ßè¿ßïÿßêÿßèò ßèáßèòßîëßï░ßêì*	3	2024-08-10	1	Google Play	negative	0.952187478542328
294	Gooood app my dear	5	2024-08-10	1	Google Play	negative	0.900593638420105
295	Harun tamam galanaa	3	2024-08-09	1	Google Play	negative	0.9410601258277892
296	A total disaster of an app. Always offline, never works, it's embarassing. I've lost hope and taken my business to a competitor	1	2024-08-08	1	Google Play	negative	0.9998038411140442
297	Gamebela	1	2024-08-08	1	Google Play	positive	0.8994190692901611
298	so poor app to use can't start up when open the app	1	2024-08-08	1	Google Play	negative	0.999744474887848
299	This app takes too long time to be opened. And even it is not working simply as other banks application. Why this app does not give a digital invoice. Even, I am not able to find where the screeshot is kept after transaction. So, please the developer should fix all these.	1	2024-08-07	1	Google Play	negative	0.9987001419067384
300	Good job	5	2024-08-07	1	Google Play	positive	0.999835729598999
301	Worst app ever, not user friendly, even doesn't serve basic functionality correctly, takes to much time to login and navigate through the app, we expected more from this bank	1	2024-08-07	1	Google Play	negative	0.9998094439506532
302	good	3	2024-08-07	1	Google Play	positive	0.999816119670868
303	Bad app .	1	2024-08-06	1	Google Play	negative	0.9997915625572203
304	I mean how could a big financial company like this, be this much irresponsible to release this app? You should be ashamed!	1	2024-08-06	1	Google Play	negative	0.9994394183158876
305	Review	5	2024-08-06	1	Google Play	positive	0.9946893453598022
306	Goood	4	2024-08-06	1	Google Play	negative	0.9943867921829224
307	≡ƒæÄ≡ƒæÄ≡ƒæÄ≡ƒæÄ≡ƒæÄ≡ƒæÄ≡ƒæÄ≡ƒæÄ≡ƒæÄ	1	2024-08-06	1	Google Play	negative	0.6970561146736145
308	Is it necessary to switch off developer options every time to use mobile banking?≡ƒñö≡ƒñö≡ƒÿí≡ƒÿí≡ƒÿí	1	2024-08-04	1	Google Play	negative	0.99793541431427
309	The previous version is better it doesn't work	1	2024-08-04	1	Google Play	negative	0.9997755885124208
310	I don't know what is wrong with BOA as a bank in general. It's been going backwards since last year or so. The app is a disaster to use in every possible way. Not stable to log in and very slow to perform transactions, couldn't take a screenshot (or can't even find the pictures even using its save screenshot option). Most of the time, it fails to perform transactions and so on. Simply, it's the worst!	1	2024-08-03	1	Google Play	negative	0.9998201727867126
311	ok	5	2024-08-03	1	Google Play	positive	0.9997851252555848
312	Take some note from CBE mobile banking app, it's the best banking app currently take some note and improve ur app . Sometimes u have to learn from the bests ≡ƒÖî	1	2024-08-03	1	Google Play	positive	0.9958856701850892
313	It's a useless app	1	2024-08-02	1	Google Play	negative	0.9998058676719666
314	It's not working as it was , so much need to improve, it was the best but not anymore	2	2024-08-01	1	Google Play	negative	0.9968530535697936
315	Poor network	1	2024-08-01	1	Google Play	negative	0.9997891783714294
316	Not yet completely working this App. i don't know when is it will be working properly! Its Sad!!!	1	2024-07-31	1	Google Play	negative	0.9993754029273988
317	The app does not open sometimes it says coonection issue which i dont have and after it opens it has bugs while using its not smooth to work with please improve it	1	2024-07-31	1	Google Play	negative	0.9953023195266724
318	It's not working totally, what a useless app is it,	1	2024-07-31	1	Google Play	negative	0.999817192554474
319	This app has become the most troubling every day. It doesn't work. I love the bank, and I hate the app	1	2024-07-31	1	Google Play	negative	0.9989368319511414
320	this is so disappointing app ≡ƒÿ₧	1	2024-07-31	1	Google Play	negative	0.9998024106025696
324	it can't even open and only display error messages	1	2024-07-27	1	Google Play	negative	0.9993472695350648
325	not active	1	2024-07-27	1	Google Play	negative	0.999765932559967
326	To get good quality	5	2024-07-27	1	Google Play	positive	0.999868392944336
327	ßèáßï¡ßê░ßê½ßê¥ ßèÑßè« ßê¥ßèòßï╡ßèò ßèÉßïì ßë╜ßîìßê⌐?	1	2024-07-26	1	Google Play	negative	0.9647620320320128
328	uselss app dont download	1	2024-07-26	1	Google Play	negative	0.9977203011512756
329	Is this app fake i try it not working it say please try again later, unable to make transactions what is the purpose of this app . If it is not working delete it	1	2024-07-25	1	Google Play	negative	0.9997162222862244
330	This app didn't work. They have a new version (new app) but still not compatible with my Samsung S8+ , which is v.funny.	1	2024-07-25	1	Google Play	negative	0.9991223216056824
331	Corrupted and poor app	1	2024-07-24	1	Google Play	negative	0.9997439980506896
332	Good	1	2024-07-24	1	Google Play	positive	0.999816119670868
333	When I try to use the application it says 'developer setting should be off' where is the setting to off this play Still doesn't work for me	3	2024-07-24	1	Google Play	negative	0.999801218509674
334	FIX YOUR Apollo!! You guys where the best ≡ƒæî	1	2024-07-23	1	Google Play	positive	0.999450385570526
335	Always slow and doesn't work on weekends if you are in a rush or a merchant this app is not for you	1	2024-07-23	1	Google Play	negative	0.9994396567344666
336	It's very difficult to use the user, app,ones dawenload the user can't operate well , no one can help me,	1	2024-07-23	1	Google Play	negative	0.9997815489768982
337	Poor application. It turned off by itself	1	2024-07-23	1	Google Play	negative	0.999744474887848
338	Allowed	5	2024-07-23	1	Google Play	positive	0.9978752136230468
339	It usually crashes and the reason it gives is a problem on internet connection although the internet was fine.	1	2024-07-23	1	Google Play	negative	0.9991043210029602
340	we want international mobile banking	1	2024-07-22	1	Google Play	positive	0.9587844014167786
341	screenshot isn't working, Please modify it	2	2024-07-22	1	Google Play	negative	0.9996084570884703
342	Naziriet measho 89160437	1	2024-07-22	1	Google Play	negative	0.9862651228904724
343	Ahmed Mohammed husen	3	2024-07-21	1	Google Play	positive	0.912415325641632
344	Is not working both this one and apollo did u make it better pls am gonne stop using this bank because of the mobile banking	1	2024-07-19	1	Google Play	negative	0.9996222257614136
345	I have experiance	5	2024-07-19	1	Google Play	negative	0.8070281147956848
346	The App is not working on Android 9.1 at all. It shows an error notification and forcefully closes the app. Must be fixed ASAP.	1	2024-07-19	1	Google Play	negative	0.9997739195823668
347	Wow	5	2024-07-19	1	Google Play	positive	0.999592125415802
348	Crashes very frequently is not stable overall need improvement such a huge bank needs a better app than the current one	1	2024-07-19	1	Google Play	negative	0.999760091304779
349	ßê¡ßï¡ßê¡ßìì	3	2024-07-19	1	Google Play	negative	0.6970561146736145
350	The previous application is much better than this one	1	2024-07-18	1	Google Play	positive	0.9991149306297302
351	Worst app. It is wise to invest money and you can make it like CBE app. Even the incon has no image. My app has better UI than yours. So, please invest more and hire professional developer companies and improve it.	1	2024-07-18	1	Google Play	negative	0.9994294047355652
352	mal	5	2024-07-16	1	Google Play	negative	0.9996137022972108
353	It is not working at all	1	2024-07-16	1	Google Play	negative	0.9997811913490297
354	Excellent	5	2024-07-16	1	Google Play	positive	0.9998434782028198
355	The poorest mobile banking survice ever. Only error reports frequently	1	2024-07-16	1	Google Play	negative	0.999705970287323
356	≡ƒÿ₧≡ƒÿ₧≡ƒÿ₧≡ƒÿ₧	1	2024-07-16	1	Google Play	negative	0.6970561146736145
357	"Why donΓÇÖt your ATMs support account-to-account transfers like other countries( Kenya, Nigeria , South africa)"	4	2025-06-06	2	Google Play	negative	0.9964652061462402
358	what is this app problem???	1	2025-06-05	2	Google Play	negative	0.9996225833892822
359	the app is proactive and a good connections.	5	2025-06-05	2	Google Play	positive	0.9998679161071776
360	I cannot send to cbebirr app. through this app.	3	2025-06-05	2	Google Play	negative	0.9953354001045228
361	good	4	2025-06-05	2	Google Play	positive	0.999816119670868
362	not functional	1	2025-06-05	2	Google Play	negative	0.999778687953949
363	everytime you uninstall the app you have to reach them out physically. very oldy! if that's one of security layer, they'd check for fraud attempt via app source directly(source:- app store, play store ... etc) implicitly ! we are in 2025, physical presence for every app install is traditional(traditionally very rare).	1	2025-06-04	2	Google Play	negative	0.9905161261558532
364	ßèáßè½ßïìßèòßë╡ ßï¿ßê¥ßèôßê╡ßîêßëúßëáßë╡ ßëªßë│ ßê╡ßê¥ ßî╜ßìêßèò ßèÉßïì ßè¿ßïÜßêà ßëáßìèßë╡ ßï¿ßêïßè¡ßèòßëúßë╕ßïìßèò ßèáßè½ßïëßèòßë╢ßë╜ ßï¿ßê¥ßèòßìêßêìßîêßïë ßèÉßîêßê¡ ßîìßèò ßèáßï▓ßê╡ ßèáßè½ßïìßèòßë╢ßë╜ mr ßëÑßêêßïë ßï¿ßêÜßîÇßê¥ßê⌐ ßëáßï¥ßë░ßïïßêì ßîìßèò ßèáßìòßêìßè¼ßê╜ßèæ space ßê╡ßèòßî╜ßìì ßèáßï¡ßëÇßëáßêìßê¥ ßëóßê╡ßë░ßè½ßè¿ßêì	4	2025-06-04	2	Google Play	negative	0.9616846442222596
365	best	5	2025-06-04	2	Google Play	positive	0.9997941851615906
366	bezabih	5	2025-06-04	2	Google Play	positive	0.965407371520996
367	Best Mobile Banking app ever	5	2025-06-04	2	Google Play	positive	0.9997294545173644
368	good	5	2025-06-04	2	Google Play	positive	0.999816119670868
369	it was good app but it have some issues like it doesnt give me the right amount that I have in the bank and have some issues in transferring	2	2025-06-04	2	Google Play	negative	0.998119294643402
370	Good	5	2025-06-04	2	Google Play	positive	0.999816119670868
371	≡ƒæî≡ƒæì	5	2025-06-04	2	Google Play	negative	0.6970561146736145
372	very niec	5	2025-06-04	2	Google Play	positive	0.5192647576332092
373	best app of finance	5	2025-06-04	2	Google Play	positive	0.9996503591537476
374	yetemeta	1	2025-06-03	2	Google Play	positive	0.655366837978363
375	Engida Kebede Fetera	5	2025-06-03	2	Google Play	negative	0.8396734595298767
376	it is not safety	1	2025-06-03	2	Google Play	negative	0.9997867941856384
377	NICE bank	5	2025-06-03	2	Google Play	positive	0.999805510044098
378	it is like a childish app make it better the worst I have ever seen	1	2025-06-02	2	Google Play	negative	0.9997958540916444
379	It's a problem solver application, go ahead CBE, I love so much.	5	2025-06-02	2	Google Play	positive	0.9997678399086
380	It's good but try to make it facilitate for your client	4	2025-06-02	2	Google Play	positive	0.9491761326789856
381	best app	5	2025-06-01	2	Google Play	positive	0.999686598777771
382	Awesome bank	5	2025-06-01	2	Google Play	positive	0.99984610080719
383	this app has developed in a very good ways but there are some comments I need to make 1- preventing the screenshot likely not good for someone like me coz I need to make screenshot for quicker evidence. 2-it would be good if you make us to access recent transaction histories for 30 days coz we don't have to go to the Bank's in person to see old transactions or add colander category so user can easily access old transactions through colanders.	5	2025-05-31	2	Google Play	negative	0.9983141422271729
384	Masha alla	5	2025-05-31	2	Google Play	negative	0.9514628052711488
385	Recently there is big problem when sending to safaricom, telebir, and even to cbebirr wallet could anybody who is responsible fix it, it's very frustrating it's been 5 days and my money hasn't been returned it takes it out of my account but doesn't send it to my mpesa update- they have just corrected it and sent me back the money but still I'm afraid now to send again	2	2025-05-31	2	Google Play	negative	0.9991102814674376
386	better service	5	2025-05-31	2	Google Play	positive	0.9982219338417052
387	it,s good app and time manager ≡ƒæì	5	2025-05-30	2	Google Play	positive	0.999837040901184
388	malkaamuu Jiidhaa Namoo	5	2025-05-30	2	Google Play	negative	0.9887813329696656
389	lower system everything	3	2025-05-30	2	Google Play	negative	0.9993475079536438
390	Nice!	5	2025-05-30	2	Google Play	positive	0.999863862991333
391	Keep it up My CBE	5	2025-05-29	2	Google Play	positive	0.9996104836463928
392	yes good	5	2025-05-28	2	Google Play	positive	0.9998410940170288
393	I was using this app for the last two years with no problems. It stopped working about 3 months ago. when I tried to transfer funds it gives me error "can't do this transaction. inactive account."	4	2025-05-27	2	Google Play	negative	0.9996353387832642
394	i like everything of this app	5	2025-05-27	2	Google Play	positive	0.9996908903121948
395	≡ƒñ¼≡ƒñ¼≡ƒñ¼≡ƒñ¼ network ≡ƒ¢£	1	2025-05-26	2	Google Play	negative	0.6856114864349365
396	Best	5	2025-05-26	2	Google Play	positive	0.9997941851615906
397	CBE is the best financial application and and very dimple to use. I would like to say thank you so much for the developer of application. I really appreciate this app.	5	2025-05-26	2	Google Play	positive	0.9982792139053344
398	nice	5	2025-05-26	2	Google Play	positive	0.9998552799224854
399	good job	5	2025-05-26	2	Google Play	positive	0.999835729598999
400	it's awesome!!	5	2025-05-25	2	Google Play	positive	0.999871015548706
401	thankyou every one	5	2025-05-25	2	Google Play	positive	0.99984610080719
402	Ronaldo ≡ƒç╡≡ƒç╣ ≡ƒÑç	5	2025-05-25	2	Google Play	positive	0.994828760623932
403	this app is absolutely fantastic I love it and I enjoying to it ,let us support this foundation together .	5	2025-05-25	2	Google Play	positive	0.9998852014541626
404	The CBE app has been highly unreliable in recent weeks. It frequently fails to work properly on both Ethio Telecom and Safaricom networks, whether using Wi-Fi or mobile data. This week, the system was down entirely for extended periods, making it very difficult to access banking services. The app only functions intermittently, and the lack of consistency is frustrating. I hope the issues are addressed soon, and that any non-technical influences are removed from such essential services.	2	2025-05-25	2	Google Play	negative	0.9997394680976868
405	mortuary app	5	2025-05-25	2	Google Play	negative	0.7924908995628357
406	it is smart app but it has stoped after some period of time on my device with out any reason .	5	2025-05-25	2	Google Play	negative	0.9961044788360596
407	amazing app I am used this app for one year	4	2025-05-24	2	Google Play	positive	0.9991408586502076
408	≡ƒæì	5	2025-05-24	2	Google Play	negative	0.6970561146736145
409	good app	5	2025-05-24	2	Google Play	positive	0.9998493194580078
410	i love it ≡ƒÿì≡ƒÿÿ	5	2025-05-24	2	Google Play	positive	0.9998791217803956
411	It makes life easy!≡ƒæî	5	2025-05-24	2	Google Play	positive	0.9993600249290466
412	its not fast	1	2025-05-24	2	Google Play	negative	0.9949808716773988
413	wow	4	2025-05-24	2	Google Play	positive	0.999592125415802
414	it is sooo good	5	2025-05-24	2	Google Play	positive	0.9998735189437866
415	excellent	5	2025-05-24	2	Google Play	positive	0.9998434782028198
416	ok	1	2025-05-24	2	Google Play	positive	0.9997851252555848
417	Fantastic	5	2025-05-23	2	Google Play	positive	0.9998743534088136
418	accessible to using	5	2025-05-23	2	Google Play	positive	0.999116837978363
419	I like it	4	2025-05-23	2	Google Play	positive	0.99985933303833
420	why you change default network?	5	2025-05-23	2	Google Play	negative	0.9962357878684998
421	very nice ≡ƒæì	5	2025-05-23	2	Google Play	positive	0.999857783317566
422	nice fast app	5	2025-05-23	2	Google Play	positive	0.999833345413208
423	how to I get my money	5	2025-05-23	2	Google Play	negative	0.9934091567993164
424	Very bad, can't even load they need to improve their services.	1	2025-05-22	2	Google Play	negative	0.999816596508026
425	Very good app, but please make it reliable . it crashes sometimes .	4	2025-05-22	2	Google Play	positive	0.9649856686592102
426	very busy I don't know why... I prefer 889	3	2025-05-22	2	Google Play	negative	0.9991938471794128
427	Sometimes it has a nasty lag for several hour fix that , the rest is ≡ƒæî	4	2025-05-22	2	Google Play	negative	0.9966771602630616
428	the most boring Mobil banking application in ethiopia.Please use alternative private banks mobile banking apps	1	2025-05-22	2	Google Play	negative	0.9986202716827391
429	hojii bonsaadha	5	2025-05-22	2	Google Play	positive	0.9568660259246826
430	ok	5	2025-05-22	2	Google Play	positive	0.9997851252555848
431	user-friendly apps.because this app is easy.	5	2025-05-22	2	Google Play	positive	0.9554508328437804
432	Awosome!!!	5	2025-05-22	2	Google Play	positive	0.6944942474365234
433	Very good app,	5	2025-05-22	2	Google Play	positive	0.9998691082000732
434	sync problem may 22 2025 but the date stack on may 8 2025 help pls	5	2025-05-22	2	Google Play	negative	0.992516815662384
435	ßï¡ßêà ßêÿßë░ßîìßëáßê¬ßï½ ßëáßîúßê¥ ßîÑßê⌐ ßèÉßïì. this app is very nice	5	2025-05-22	2	Google Play	positive	0.9997020363807678
436	I hate this app ≡ƒÿÆ	1	2025-05-22	2	Google Play	negative	0.9996378421783448
437	trustful	5	2025-05-22	2	Google Play	positive	0.9998213648796082
438	I like	5	2025-05-22	2	Google Play	positive	0.9998149275779724
439	update issue	4	2025-05-22	2	Google Play	positive	0.5473281145095825
440	its not working over safari network	1	2025-05-22	2	Google Play	negative	0.9991377592086792
441	oldie	1	2025-05-22	2	Google Play	negative	0.6663179397583008
442	it doesn't work	1	2025-05-21	2	Google Play	negative	0.9997813105583192
443	This app is good, and we are using it well	1	2025-05-21	2	Google Play	positive	0.999855637550354
444	very nice ≡ƒæî app for android phone	5	2025-05-21	2	Google Play	positive	0.9994401335716248
445	Yes Yes	5	2025-05-21	2	Google Play	positive	0.9997482895851136
446	ßëáßîúßê¥ ßè¿ßê¡ßìïßìï	1	2025-05-21	2	Google Play	negative	0.7850579619407654
447	easy to use helpful in my life	5	2025-05-21	2	Google Play	positive	0.9981144666671752
448	good ≡ƒæì	4	2025-05-21	2	Google Play	positive	0.9998576641082764
449	the best mobile banking app	5	2025-05-21	2	Google Play	positive	0.9998278617858888
450	this app is very useful app,it saves time,and it is secure	4	2025-05-21	2	Google Play	positive	0.9992597699165344
451	ok	2	2025-05-21	2	Google Play	positive	0.9997851252555848
452	it's a good application ≡ƒæì	5	2025-05-21	2	Google Play	positive	0.9998123049736024
453	the screenshot and the reffresh options are so annoying that makes transaction so delaying activity !	2	2025-05-21	2	Google Play	negative	0.9997513890266418
454	poor service	1	2025-05-21	2	Google Play	negative	0.999653458595276
455	amazing	5	2025-05-20	2	Google Play	positive	0.999875545501709
456	it is reliable and easy to use.	5	2025-05-20	2	Google Play	positive	0.9998389482498168
457	the most annoying mobile banking app I've ever seen	1	2025-05-20	2	Google Play	negative	0.9994208812713624
458	Cbe mobile banking	5	2025-05-20	2	Google Play	positive	0.8304276466369629
459	i can't make Screenshout in this app, please made modification	5	2025-05-20	2	Google Play	negative	0.9966920614242554
460	Best app I loved it	5	2025-05-19	2	Google Play	positive	0.999849796295166
461	nice app	5	2025-05-19	2	Google Play	positive	0.9998061060905457
462	wow	5	2025-05-18	2	Google Play	positive	0.999592125415802
463	Amazing applicatiom sometimes doesnt work!	5	2025-05-18	2	Google Play	negative	0.6448807716369629
464	well satisfied with this beautiful app	5	2025-05-18	2	Google Play	positive	0.999858856201172
465	very good	4	2025-05-17	2	Google Play	positive	0.9998520612716676
466	best app.	5	2025-05-17	2	Google Play	positive	0.999774158000946
467	not working,why???	5	2025-05-17	2	Google Play	negative	0.9995881915092468
468	Great impact but why Developer option turnoff if you fix ≡ƒÖÅ ≡ƒÖÅ ≡ƒÖÅ	5	2025-05-17	2	Google Play	negative	0.9841781258583068
469	always disappointing ! especially the iOS one !! some similar local applications are extremely superior to this application!! Really disappointing!	1	2025-05-17	2	Google Play	negative	0.9996201992034912
470	woxe harimo ribiso	5	2025-05-17	2	Google Play	negative	0.9374374151229858
471	Good ,easy to use	5	2025-05-16	2	Google Play	positive	0.9998592138290404
472	Good app	5	2025-05-15	2	Google Play	positive	0.9998493194580078
473	Good job≡ƒæì	5	2025-05-14	2	Google Play	positive	0.9998576641082764
474	Please kindly ask to update the app and allow us to screenshot, it's convenient and efficient as long as you add security to the access there is no reason to block us from screenshooting our screen.	2	2025-05-14	2	Google Play	positive	0.993906795978546
475	I have using the CBE mobile banking app. and overall i appreciate its Feuteres However i.ve Notticed that when i turn on the Developer options on my divice the App.Stop Functioning prorerly It.Would Be Great If You could look into This issue as l often need to access Developer setting for Otter Application ThankYou For Your attention to This Matter	4	2025-05-13	2	Google Play	negative	0.9474117159843444
476	customer service is bad nothing is good about this bank	1	2025-05-13	2	Google Play	negative	0.9996613264083862
477	It is Amazing Mobile Banking App....But why the screenshot of the receipt doesnt work	5	2025-05-13	2	Google Play	negative	0.992915153503418
478	fast and simple easy to use ≡ƒæî	5	2025-05-12	2	Google Play	positive	0.998494267463684
479	The fastest transferring app I ever had its so reliable	5	2025-05-11	2	Google Play	positive	0.9844427704811096
480	Funds transferred from the same bank do not reflect in the account, even though a confirmation text message was received.	3	2025-05-11	2	Google Play	negative	0.9986681938171388
481	it's easy and fast	5	2025-05-10	2	Google Play	positive	0.9995684027671814
482	This app don't have self activation only you have to look near cbe branch that's disgusting	1	2025-05-10	2	Google Play	negative	0.9960438013076782
483	hello dearest CBE office personnel make some benefits for those using interest free accounts thanks for your help	5	2025-05-09	2	Google Play	positive	0.999572217464447
484	wow best application ever	5	2025-05-09	2	Google Play	positive	0.9997984766960144
485	Am sorry but what does developer mode do to the application ? hack it ? are you sure you are developer or are you stupid, doesnt makes sense,	1	2025-05-08	2	Google Play	negative	0.9997019171714784
486	Best	4	2025-05-08	2	Google Play	positive	0.9997941851615906
487	the pride of Ethiopian bank ≡ƒÅª	5	2025-05-08	2	Google Play	positive	0.999118983745575
488	why the app telling me to turn of developer options please fix it.	1	2025-05-07	2	Google Play	negative	0.9990994930267334
489	i am very happy . i have small prob. after i transfer i cant put the transfer cashe bil to my dic.	5	2025-05-07	2	Google Play	positive	0.9976927042007446
490	good	3	2025-05-06	2	Google Play	positive	0.999816119670868
491	amazing apps	5	2025-05-06	2	Google Play	positive	0.9998716115951538
492	All service of Mobile Banking	5	2025-05-06	2	Google Play	positive	0.8924255967140198
493	needs improvement	1	2025-05-06	2	Google Play	negative	0.9966731071472168
494	i miss the old one i couldn't send my mony to other bank..	1	2025-05-06	2	Google Play	negative	0.995843231678009
495	the app is recently crushing each time you open and try to make transfers...it used to be good. take lessons from the Dashen Super app or ethiotelecom. it is not befitting of your experience and glory. inv3st in making it more friendly and convenient. I am considering leaving CBE for good.	2	2025-05-06	2	Google Play	negative	0.9984410405158995
496	good but these week not oky	4	2025-05-06	2	Google Play	negative	0.955415666103363
497	well designed! Fixing bugs & two step verification with biometric... simply it's great!	5	2025-05-06	2	Google Play	positive	0.99980491399765
498	If any developer is reading this please fix the screenshot functionality or at least the download button should work flawlessly without me touching it twenty times.	1	2025-05-05	2	Google Play	negative	0.9975224137306212
499	it's a great job.but one more thing, it hasn't been placed for transfer to other banks on face like mobile charge card place	5	2025-05-05	2	Google Play	positive	0.8991115093231201
500	CBE mobilr bankg	5	2025-05-05	2	Google Play	positive	0.8703048229217529
501	wow	1	2025-05-05	2	Google Play	positive	0.999592125415802
502	verygood	3	2025-05-05	2	Google Play	positive	0.9988996982574464
503	┘à┘à╪¬╪º╪▓ ╪¼╪»╪º	5	2025-05-04	2	Google Play	negative	0.8031753301620483
504	it's very low quality application	1	2025-05-04	2	Google Play	negative	0.9996594190597534
505	Very Amazing Apps	5	2025-05-04	2	Google Play	positive	0.9998774528503418
506	ßèáßï¢	1	2025-05-04	2	Google Play	negative	0.6970561146736145
507	wow simple life	5	2025-05-04	2	Google Play	positive	0.9997076392173768
508	it's nice	5	2025-05-03	2	Google Play	positive	0.9998672008514404
509	Why stacked sometimes	5	2025-05-03	2	Google Play	negative	0.994105100631714
510	okay ≡ƒæì but sometimes busy	1	2025-05-03	2	Google Play	negative	0.8515547513961792
511	the worst commercial company that fails to do even the most normal things again and and again.	1	2025-05-03	2	Google Play	negative	0.9997990727424622
512	Very good app. but disappointed by general cessation of system.	5	2025-05-02	2	Google Play	negative	0.998118817806244
513	Good and fast	5	2025-05-02	2	Google Play	positive	0.9998561143875122
514	Unreliable!	1	2025-05-02	2	Google Play	negative	0.9997379183769226
515	Best the best fast	5	2025-05-02	2	Google Play	positive	0.9998427629470824
516	happy	5	2025-05-02	2	Google Play	positive	0.99987530708313
517	fast and reliable	5	2025-05-02	2	Google Play	positive	0.9998595714569092
518	network errorrrrrr	2	2025-05-02	2	Google Play	negative	0.9978076815605164
519	Best app but there is some problem I can't send money to telebirr or mpesa so if you can add that it could be use full	4	2025-05-02	2	Google Play	negative	0.9982808828353882
520	its good and simple to use	5	2025-05-02	2	Google Play	positive	0.9998610019683838
521	worest app like that bank for security and network access	1	2025-05-02	2	Google Play	negative	0.9927296042442322
522	it's the best app i	5	2025-05-02	2	Google Play	positive	0.999834418296814
523	not bad not good	1	2025-05-02	2	Google Play	negative	0.9715349674224854
524	its very nice	5	2025-05-02	2	Google Play	positive	0.9998526573181152
525	do not work this week	3	2025-04-30	2	Google Play	negative	0.99776029586792
526	It crashes frequently	4	2025-04-30	2	Google Play	negative	0.9993256330490112
527	the best	5	2025-04-28	2	Google Play	positive	0.9998332262039183
528	I can simply describe this app as "Making all your work easier".	5	2025-04-28	2	Google Play	positive	0.8382560610771179
529	goid	5	2025-04-28	2	Google Play	negative	0.7086988091468811
530	best appearance	5	2025-04-27	2	Google Play	positive	0.9996986389160156
531	it's very good ≡ƒæì app	5	2025-04-27	2	Google Play	positive	0.999859094619751
532	I need support you	5	2025-04-27	2	Google Play	negative	0.9881442785263062
533	the worst Mobile banking i have ever seen in my life	1	2025-04-26	2	Google Play	negative	0.9997807145118712
534	super	5	2025-04-26	2	Google Play	positive	0.998783528804779
535	ßîáßîÇßî¿ßîêßîÇßìóßîÇßîê	5	2025-04-26	2	Google Play	negative	0.8337247967720032
536	i like the app	5	2025-04-26	2	Google Play	positive	0.9994398951530457
537	the Best	1	2025-04-26	2	Google Play	positive	0.9998332262039183
538	to other bank is bad	1	2025-04-25	2	Google Play	negative	0.9997149109840392
539	tank's	5	2025-04-25	2	Google Play	negative	0.9855976700782776
540	its good but add more features such like. bank statement showing	5	2025-04-24	2	Google Play	positive	0.9881664514541626
541	it is so nice	5	2025-04-24	2	Google Play	positive	0.9998714923858644
542	Very Good≡ƒæì	5	2025-04-21	2	Google Play	positive	0.8243648409843445
543	my first frequent experience of cbe app is critical-time failure such as suspending payment on air for 2-5 days with zero explanation, deducting from sender account without depositing to the receiver act. Another fatal error by the banking company as a whole (not the app itself though) is forced-banking with corporations without consent of employers-users of the corresponding corporations	2	2025-04-21	2	Google Play	negative	0.9995972514152528
544	wow, amazing app	5	2025-04-21	2	Google Play	positive	0.9998503923416138
545	use ful	5	2025-04-21	2	Google Play	negative	0.9949980974197388
546	Great app	5	2025-04-21	2	Google Play	positive	0.999821126461029
547	well app	5	2025-04-20	2	Google Play	positive	0.9993765950202942
548	Actually it is inactive	4	2025-04-19	2	Google Play	negative	0.9996483325958252
549	amazing	1	2025-04-19	2	Google Play	positive	0.999875545501709
550	slow, only one account is used	2	2025-04-19	2	Google Play	negative	0.9997527003288268
551	always CBE is the leading Commercial Bank≡ƒÆ¬≡ƒÆ¬≡ƒÆ¬	5	2025-04-18	2	Google Play	positive	0.9975135326385498
552	i like it	5	2025-04-18	2	Google Play	positive	0.99985933303833
553	why removing screenshot feature why?	1	2025-04-18	2	Google Play	negative	0.9981147050857544
554	nice apps where network is good in connection	5	2025-04-18	2	Google Play	positive	0.9994925260543824
555	Thank you!!!	5	2025-04-18	2	Google Play	positive	0.9998666048049928
556	i can't take screenshot	1	2025-04-18	2	Google Play	negative	0.9897894263267516
557	every update was made the system better and better until the March 19th, 2025 update, not allowing us to screenshot. you guys didn't understand how much it's a really quick and significant thing. You add extra steps to us, which makes the process draw back	3	2025-04-18	2	Google Play	negative	0.9861214756965636
558	perfectly special	5	2025-04-18	2	Google Play	positive	0.999879002571106
559	Fast and Reliable	5	2025-04-18	2	Google Play	positive	0.9998595714569092
560	The best application I have ever seen in Ethiopia banking industry.	5	2025-04-17	2	Google Play	positive	0.9997448325157166
561	great app!!!	5	2025-04-17	2	Google Play	positive	0.9998501539230348
562	because sometimes it doesn't working it load too much	3	2025-04-17	2	Google Play	negative	0.9911932349205016
563	Absolutely the best app! It works flawlessly, anytime and anywhere.	5	2025-04-17	2	Google Play	positive	0.9998784065246582
564	ok	3	2025-04-16	2	Google Play	positive	0.9997851252555848
565	very nice app ever!!!	5	2025-04-16	2	Google Play	positive	0.999826967716217
566	the best app	5	2025-04-16	2	Google Play	positive	0.9998469352722168
567	Biometric security for mobile banking is not available	5	2025-04-16	2	Google Play	negative	0.9996340274810792
568	great	5	2025-04-15	2	Google Play	positive	0.9998630285263062
569	Nice service	5	2025-04-15	2	Google Play	positive	0.9998397827148438
570	great app	5	2025-04-15	2	Google Play	positive	0.999821126461029
571	it's special apps	5	2025-04-15	2	Google Play	positive	0.9995416402816772
572	In the updated version of the app, it takes more time to download the receipt.	3	2025-04-15	2	Google Play	negative	0.9985652565956116
573	ßêêßê¥ßèòßï╡ßèÉßïì ßë╡ßê½ßèòßï¢ßè¡ßê╜ßèò ßë╡ßèòßê╜ ßëÑßë╗ ßï¿ßêÜßï½ßê│ßï¿ßïì ?	3	2025-04-14	2	Google Play	negative	0.9647620320320128
574	Good ≡ƒöÑ	5	2025-04-14	2	Google Play	positive	0.9998576641082764
981	good app	5	2025-03-04	3	Google Play	positive	0.9998493194580078
575	very interesting app i am using every day fantastic	5	2025-04-14	2	Google Play	positive	0.9998443126678468
576	lebaa bank	5	2025-04-14	2	Google Play	negative	0.9437296390533448
577	Can't scan/recognize other banks' Interoperable QR Codes	1	2025-04-13	2	Google Play	negative	0.9983273148536682
578	OK	5	2025-04-13	2	Google Play	positive	0.9997851252555848
579	grateful app	5	2025-04-13	2	Google Play	positive	0.9998038411140442
580	100% Γ¥ñ∩╕ÅΓ¥ñ∩╕ÅΓ¥ñ∩╕Å≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ	5	2025-04-13	2	Google Play	positive	0.9974650144577026
581	everthing wellbeok	3	2025-04-13	2	Google Play	negative	0.7055724859237671
582	"This mobile banking app is fast and user-friendly, but the only issue I encountered is that I can't access my bank statement within the app. I kindly request that this feature be added, similar to what is offered by other private bank mobile banking apps.	4	2025-04-13	2	Google Play	negative	0.9963226318359376
583	nice app ≡ƒæî	5	2025-04-12	2	Google Play	positive	0.9996724128723145
584	why did this app is not screenshot	5	2025-04-12	2	Google Play	negative	0.9989493489265442
585	it so good app	5	2025-04-12	2	Google Play	positive	0.999868631362915
586	the best app	3	2025-04-12	2	Google Play	positive	0.9998469352722168
587	╪¼┘à┘è┘ä	5	2025-04-11	2	Google Play	positive	0.9271727204322816
588	less network, specially to make fee for utility purpose	1	2025-04-11	2	Google Play	negative	0.994688868522644
589	simply for used	4	2025-04-11	2	Google Play	negative	0.9918003678321838
590	wow keep up	5	2025-04-10	2	Google Play	positive	0.9998539686203004
591	its great app but when updating we can't take screen shot please try to fix it	3	2025-04-10	2	Google Play	negative	0.9934490323066713
592	good one	5	2025-04-10	2	Google Play	positive	0.9998288154602052
593	everything is easy thank you cebe	5	2025-04-10	2	Google Play	positive	0.9998396635055542
594	ßìêßîúßèò ßëÇßêìßîúßìï	5	2025-04-10	2	Google Play	negative	0.7850579619407654
595	ßîÄßëáßï¥	5	2025-04-09	2	Google Play	negative	0.6970561146736145
596	but this app says can't sync	5	2025-04-09	2	Google Play	negative	0.9988365769386292
597	waw	5	2025-04-09	2	Google Play	negative	0.7346174120903015
598	to slow	3	2025-04-09	2	Google Play	negative	0.999487280845642
599	work on screen shot system	4	2025-04-08	2	Google Play	negative	0.5902657508850098
600	very very nice aplication	1	2025-04-08	2	Google Play	positive	0.9998292922973632
601	wonder full and it is easy to use	5	2025-04-08	2	Google Play	positive	0.9996142387390136
602	easy and reliable	2	2025-04-08	2	Google Play	positive	0.9998584985733032
603	it is Very Useful app ≡ƒæì	5	2025-04-07	2	Google Play	positive	0.994536280632019
604	very good	5	2025-04-07	2	Google Play	positive	0.9998520612716676
605	perfect app	5	2025-04-07	2	Google Play	positive	0.9998340606689452
606	I like it.	5	2025-04-07	2	Google Play	positive	0.999869465827942
607	bugs	3	2025-04-07	2	Google Play	negative	0.9988303780555724
608	commerial Bank	5	2025-04-06	2	Google Play	negative	0.6810255646705627
609	Genat biru	2	2025-04-06	2	Google Play	negative	0.966159999370575
610	≡ƒÖÅ	5	2025-04-06	2	Google Play	negative	0.6970561146736145
611	it is good but it doesn't allow screen shot	4	2025-04-06	2	Google Play	positive	0.6723135709762573
612	the best one	5	2025-04-06	2	Google Play	positive	0.9998371601104736
613	You need to copy many things from other bank apps like Amole(Dashen)	2	2025-04-06	2	Google Play	negative	0.9967620372772216
614	bring back the screenshot feature.	1	2025-04-05	2	Google Play	positive	0.9942916631698608
615	Good!≡ƒæì	3	2025-04-05	2	Google Play	positive	0.9998579025268556
616	best app to experience him that to smooth transaction among the customers	1	2025-04-05	2	Google Play	positive	0.9985142350196838
617	nice app suitable to use it. the only weak side is it need data connections and hoping will be fixed to offline i gave 4 rate	4	2025-04-05	2	Google Play	negative	0.955145001411438
618	easy to use	5	2025-04-05	2	Google Play	positive	0.9988542795181274
619	Good job to the CBE team on this mobile app! It's designed in a way that's simple and intuitive to navigate, which is great for everyone. It effectively handles the essential banking tasks I need to perform regularly. It's a practical and reliable tool that makes everyday banking much more convenient. Thank you for this useful application.	5	2025-04-04	2	Google Play	positive	0.9998189806938172
620	ßêêßèö ßëáßîúßê¥ ßê¥ßê¡ßîÑ ßèÉßïì ßîìßèò screenshot ßê¢ßê¿ßîì ßëóßë╗ßêì ßê¥ßê¡ßîÑ ßèÉßëáßê¡	5	2025-04-04	2	Google Play	negative	0.8819229602813721
621	before it was smooth and good. this time after the new update in 2025 i can not make screenshot of my recite. even the downlod button is very delayed in putting my recite in my gallery for simple proof. please fix this i am unable to show proof of payment to my clients. thankyou.	3	2025-04-04	2	Google Play	negative	0.9973511695861816
622	cool Γ¥ñ	4	2025-04-04	2	Google Play	positive	0.9997991919517516
623	Best app	5	2025-04-04	2	Google Play	positive	0.999686598777771
624	best banking App	4	2025-04-03	2	Google Play	positive	0.999736487865448
625	satisfied	5	2025-04-03	2	Google Play	positive	0.9997212290763856
626	this app is very necessary app many people found it	5	2025-04-03	2	Google Play	positive	0.9980692267417908
627	cbe very active Bank I'm using CBE app very very satisfaction	5	2025-04-03	2	Google Play	positive	0.989459753036499
628	It made life alot easier. I cant even imagine having to make all those transactions in person. So this app was crucial for me. Very good app. well done.	5	2025-04-03	2	Google Play	positive	0.9997400641441344
629	perfect	5	2025-04-03	2	Google Play	positive	0.9998517036437988
630	thankyou	5	2025-04-02	2	Google Play	positive	0.999842882156372
631	I Like it	5	2025-04-02	2	Google Play	positive	0.99985933303833
632	I don't understand the reason, why I need to disable developer options to access the app, it has no security risks nor does it hinder the app's functionalities. This goes out to the dev, I hope your life is filled with inconveniences.	1	2025-04-02	2	Google Play	negative	0.9986600875854492
633	smart app	5	2025-04-02	2	Google Play	positive	0.999789297580719
634	isin ga'a	2	2025-04-02	2	Google Play	positive	0.7607290148735046
635	it's great	5	2025-04-02	2	Google Play	positive	0.9998691082000732
636	very good app and stars faction with work	5	2025-04-02	2	Google Play	positive	0.999858856201172
637	It is excelent	5	2025-04-01	2	Google Play	positive	0.9998881816864014
638	Smart	5	2025-04-01	2	Google Play	positive	0.9998456239700316
848	it's a hestorical app. in the bank industry.	5	2025-04-21	3	Google Play	negative	0.9915915727615356
639	ßëáßï¿ßïêßê⌐ ßèáßìòßï░ßë╡ ßèÑßï¿ßîáßï¿ßëÇßè¥ ßèÉßïì ßêêßèÉßîêßê⌐ ßëÑßê¡ ßê╡ßêîßêêßè¥ ßï¡ßêåßèôßêì ßèÑßèô ßê¥ßèò ßêêßê¢ßêêßë╡ ßìêßêìßîê ßêÿßê░ßêïßë╣ ßïêßêïßêà ßë╝ßîìßê«ßè¢ßêì ≡ƒÑ║≡ƒÑ║≡ƒÑ║	3	2025-04-01	2	Google Play	negative	0.9570206999778748
640	very interesting app	5	2025-04-01	2	Google Play	positive	0.9997968077659608
641	wow.......cbe.....keep it up.....!!!!!!	5	2025-04-01	2	Google Play	positive	0.998596966266632
642	ßîèßï£ßèò ßëåßîúßëó ßèÑßèô ßêàßï¡ßïêßë╡ßèò ßëÇßêêßêì ßè¿ßêÜßï½ßï░ßê¡ßîë ßèóßë╡ßï¼ßî▓ßï½ ßè½ßêë ßìïßï¡ßèôßèòßê╡ ßèáßìòßêìßè¼ßê╜ßèûßë╜ ßêüßêë ßï¡ßêä ßï¡ßêêßï½ßêì	5	2025-04-01	2	Google Play	negative	0.9510264992713928
643	Excellent≡ƒÖÅapp	5	2025-04-01	2	Google Play	negative	0.6970561146736145
644	the most useful	5	2025-04-01	2	Google Play	positive	0.9997223019599916
645	I am more satisfied in this app . More sure you have to secure.	4	2025-04-01	2	Google Play	positive	0.9787845015525818
646	Easy to use	5	2025-04-01	2	Google Play	positive	0.9988542795181274
647	very good, but sometimes NUR CBE comes without my consent. even if I choose locked, it appears	4	2025-04-01	2	Google Play	negative	0.9585953950881958
648	Excellent !!!	5	2025-04-01	2	Google Play	positive	0.999865174293518
649	always we relay on	5	2025-04-01	2	Google Play	positive	0.9971832633018494
650	I'm lucky to have this≡ƒÖÅ thank you CBE.	5	2025-04-01	2	Google Play	positive	0.999750792980194
651	it's need more improvement like Tellbirr.	4	2025-04-01	2	Google Play	negative	0.999363124370575
652	goode app	5	2025-04-01	2	Google Play	positive	0.9997406601905824
653	a very nice app.≡ƒæì≡ƒæì≡ƒæì	5	2025-04-01	2	Google Play	positive	0.9998323917388916
654	safe easy & fast	5	2025-04-01	2	Google Play	positive	0.999711573123932
655	it's good app	5	2025-04-01	2	Google Play	positive	0.9998689889907836
656	It is veary useful app but screen shout was impossible .solve this problem	5	2025-04-01	2	Google Play	negative	0.9958590865135192
657	ßîÑßê⌐ ßèÉßïì	5	2025-04-01	2	Google Play	negative	0.7850579619407654
658	ßèÑßîàßîì ßëáßîúßê¥ ßîÑßê⌐ ßèáßìò	5	2025-04-01	2	Google Play	negative	0.8616324663162231
659	ßëáßîúßê¥ ßêâßê¬ßìì ßèÉßïì ßîìßèò ßëÑßê¡ ßëáßêÜßë░ßêïßêêßììßëáßë╡ ßïêßëàßë╡ ßë░ßëÇßèòßê╖ßêì ßï¡ßêïßêì ßèÑßêïßìè ßêÿßêìßè¡ßë▒ ßï¡ßï░ßê¡ßê│ßêì ßîìßèò ßèáßï¡ßëÇßèòßê╡ßê¥	5	2025-04-01	2	Google Play	negative	0.9528431296348572
660	suitable app	4	2025-04-01	2	Google Play	positive	0.9997665286064148
661	Dear cbe this app is not comparable with 21century and pls try to solve it.≡ƒÆÇ≡ƒÆÇ≡ƒÆÇ	1	2025-04-01	2	Google Play	negative	0.9995038509368896
662	best transaction method of financial	5	2025-04-01	2	Google Play	positive	0.9995972514152528
663	#CBE is Now going to on the right Pathway/track/!! Thank you CBE one step ahead on payment platform app!!	5	2025-04-01	2	Google Play	positive	0.9995881915092468
664	It literarily don't work at all	4	2025-04-01	2	Google Play	negative	0.9995075464248656
665	good give us plus	5	2025-04-01	2	Google Play	positive	0.9998716115951538
666	Very good application. However, I have one functionality recommendation. What if you let the app transfer money to any telebirr account as for MPESA? By the way, I am not the only one to ask this. Thank you!	4	2025-04-01	2	Google Play	positive	0.9895473718643188
667	before update it was able to screenshot while after update I can't able to screenshot the transfere details	4	2025-04-01	2	Google Play	negative	0.9852171540260316
668	Tnc Cbe	5	2025-04-01	2	Google Play	positive	0.9070304036140442
669	it is good app. But you have integrate cbe with cbe birr. to allow cardless withdrawal directly from our accout!	4	2025-03-31	2	Google Play	negative	0.9151977896690368
670	great apps	5	2025-03-31	2	Google Play	positive	0.999853491783142
671	Excellent	5	2025-03-31	2	Google Play	positive	0.9998434782028198
672	Great app!	4	2025-03-31	2	Google Play	positive	0.9998462200164796
673	CBE	5	2025-03-31	2	Google Play	positive	0.9966009855270386
674	very good ≡ƒæì ≡ƒæÅ	5	2025-03-31	2	Google Play	positive	0.99985933303833
675	great when it works	5	2025-03-31	2	Google Play	positive	0.9998693466186525
676	the app is very good, but why screenshots is impossible?	5	2025-03-31	2	Google Play	negative	0.981265127658844
677	excellent match application	5	2025-03-31	2	Google Play	positive	0.9998453855514526
678	The Best app≡ƒÿì≡ƒÿì≡ƒÿì	5	2025-03-31	2	Google Play	positive	0.9998503923416138
679	excellent app	5	2025-03-31	2	Google Play	positive	0.9998356103897096
680	easy to use and user friendly	5	2025-03-31	2	Google Play	positive	0.9979179501533508
681	very nice	5	2025-03-31	2	Google Play	positive	0.9998563528060912
682	ßèáßê¬ßìì ßèÉßïì ßëáßë░ßêêßï¡ ßï¿ßèáßê╗ßê½ ßï░ßêàßèÉßë▒ ßêÿßê¿ßîïßîêßîí ßë░ßêÿßë╜ßë╢ßè¢ßêì	3	2025-03-31	2	Google Play	negative	0.920040488243103
683	well software	5	2025-03-31	2	Google Play	positive	0.999262273311615
684	ßîÑßê⌐ ßèÉßïì ßèáßèòßï│ßèòßï┤ ßê╡ßë│ßè¡ ßëóßï½ßï░ßê¡ßîìßê¥	4	2025-03-31	2	Google Play	negative	0.8832125663757324
685	CBE very good apps	5	2025-03-31	2	Google Play	positive	0.9998394250869752
686	This application fast, secure and more convenient. Thanks CBE	5	2025-03-31	2	Google Play	positive	0.9992094039916992
687	excellent service	5	2025-03-31	2	Google Play	positive	0.9998576641082764
688	love	3	2025-06-06	3	Google Play	positive	0.9998735189437866
689	ßêÿßë╕ßê╕ßîá	5	2025-06-03	3	Google Play	negative	0.6970561146736145
690	wow	5	2025-06-03	3	Google Play	positive	0.999592125415802
691	gadaa	5	2025-06-01	3	Google Play	negative	0.7211462259292603
692	Massive upgrade from the Amole app.	5	2025-05-31	3	Google Play	positive	0.9646421074867249
693	good	4	2025-05-31	3	Google Play	positive	0.999816119670868
694	very good for this app	5	2025-05-31	3	Google Play	positive	0.9998138546943665
695	top	5	2025-05-31	3	Google Play	positive	0.9997069239616394
696	this app better than Amole . but the biometric on new update doesn't work	4	2025-05-31	3	Google Play	negative	0.999607503414154
697	Wow	5	2025-05-30	3	Google Play	positive	0.999592125415802
698	good	5	2025-05-30	3	Google Play	positive	0.999816119670868
699	wow to it saff and this app	5	2025-05-30	3	Google Play	positive	0.998571276664734
700	it too slow	3	2025-05-29	3	Google Play	negative	0.9996801614761353
701	ßï│ßê╜ßèò ßëúßèòßè¡ ßï¡ßêêßï½ßêì	4	2025-05-28	3	Google Play	negative	0.8337247967720032
702	real life changer	5	2025-05-28	3	Google Play	positive	0.9997788071632384
703	≡ƒæì≡ƒæì≡ƒæì	5	2025-05-28	3	Google Play	negative	0.6970561146736145
704	nice application	5	2025-05-27	3	Google Play	positive	0.9998229146003724
705	useless app ever loading take long	1	2025-05-27	3	Google Play	negative	0.9997350573539734
978	no one dashen yichlal	5	2025-03-07	3	Google Play	negative	0.9842472076416016
706	Game changer app! Dashen Bank Super App is fast, secure, and easy to use. The three-click payment makes sending money super quick, and the QR code payment is perfect for cashless shopping. I also love the biometric login and easy airtime and bill payments. Everything I need is in one place. Dashen Bank has really raised the bar for digital banking in Ethiopia. Highly recommended!	5	2025-05-26	3	Google Play	positive	0.999617338180542
707	very useful App	1	2025-05-26	3	Google Play	positive	0.9995785355567932
708	Simple, robust features? Yes, please! But the endless loading screen killed the funΓÇöI couldnΓÇÖt use it for days. Fix the glitch, and IΓÇÖll yeet a higher rating!	2	2025-05-26	3	Google Play	negative	0.835149884223938
709	Wawww	5	2025-05-24	3	Google Play	negative	0.941804051399231
710	it is good but some times says duplicate transaction why?	5	2025-05-24	3	Google Play	negative	0.9836629629135132
711	very Nice	5	2025-05-23	3	Google Play	positive	0.9998563528060912
712	its best	5	2025-05-23	3	Google Play	positive	0.9998121857643129
713	it is not as good as to the other mobile bank app.	1	2025-05-22	3	Google Play	negative	0.999786913394928
714	The best of best is now arrived **Empowering Your Financial Freedom** "Experience seamless banking at your fingertips with Dashen Bank. Empowering your financial freedom, anytime, anywhere!" **Innovation Meets Convenience** "Dashen Bank Mobile Banking: Where innovation meets convenience. **Secure and Reliable** "Bank with confidence	5	2025-05-22	3	Google Play	positive	0.9996517896652222
715	Nothing is changed in the updated version. You have been collecting comments but where is the feed back you improved in this version. superapp is mot functioning today.	4	2025-05-20	3	Google Play	negative	0.9939862489700316
716	The best app ever in finance sector	5	2025-05-18	3	Google Play	positive	0.9998089671134948
717	Its good app than other compitators but it confuse when we transfer it needs OTP and PIN most user inter their pin instead of OTP we know the litrecy level of our society so if it is device based i dont know the needs of OTP so please try to fix	3	2025-05-18	3	Google Play	negative	0.9983357787132264
718	dashen bank or dashen super app?	1	2025-05-17	3	Google Play	negative	0.9937525391578674
719	wowwwe app	5	2025-05-17	3	Google Play	positive	0.9829692840576172
720	Transferring to other bank accounts is a hastle and inconvenient .Get used to seeing " please try again "	2	2025-05-17	3	Google Play	negative	0.9994332194328308
721	always lagging	1	2025-05-16	3	Google Play	negative	0.9998013377189636
722	Amazing Application...	5	2025-05-16	3	Google Play	positive	0.9998786449432372
723	Fantastic	5	2025-05-16	3	Google Play	positive	0.9998743534088136
724	Dashen bank app is very good, but sometimes it is not working well	5	2025-05-15	3	Google Play	negative	0.9976341724395752
725	its my choice	5	2025-05-15	3	Google Play	positive	0.9962010979652404
726	wow apo	5	2025-05-15	3	Google Play	positive	0.99947851896286
727	awesome app keep going	5	2025-05-14	3	Google Play	positive	0.9998502731323242
728	≡ƒæì	5	2025-05-14	3	Google Play	negative	0.6970561146736145
729	It grows ethiopian digital banking step ahead.All fetures in one,simple fast and convince.	5	2025-05-14	3	Google Play	positive	0.9992207288742064
730	Game changer	5	2025-05-13	3	Google Play	positive	0.988757073879242
731	Totally amazing	5	2025-05-13	3	Google Play	positive	0.9998782873153688
732	super ≡ƒÿÄ	5	2025-05-13	3	Google Play	positive	0.9331687092781068
733	what a helpful app!!!!	5	2025-05-13	3	Google Play	positive	0.9990901947021484
734	Good	4	2025-05-13	3	Google Play	positive	0.999816119670868
735	nice	5	2025-05-13	3	Google Play	positive	0.9998552799224854
736	To be honest, best banking and lifestyle app in Ethiopia.	5	2025-05-12	3	Google Play	positive	0.9997262358665466
737	fast	5	2025-05-12	3	Google Play	positive	0.9989494681358336
738	A must have, seamless, all in one digital platform "DB Superapp"! Keep living your motto "Always one step ahead"	5	2025-05-12	3	Google Play	positive	0.9966461062431335
739	This App makes digital banking effortless and convenient. User-friendly interface, secure transactions, and excellent features for managing finances efficiently.	4	2025-05-10	3	Google Play	positive	0.9991555213928224
740	Amazing app super easy to use and best design. loved it.	5	2025-05-09	3	Google Play	positive	0.9998630285263062
741	its the best ever	5	2025-05-09	3	Google Play	positive	0.9998552799224854
742	excellent game changer App	5	2025-05-08	3	Google Play	positive	0.9998358488082886
743	I am highly excited by using this application and it is the most favorable as well as preferrable mobile app.	5	2025-05-03	3	Google Play	positive	0.9995176792144777
744	it seems me logging out within minutes	1	2025-05-03	3	Google Play	negative	0.9982207417488098
745	nice app especially GUI and I have got some error when you send within dashen bank the receipter is not get SMS notification	4	2025-05-03	3	Google Play	negative	0.985798954963684
746	yes i want dashen super open	5	2025-05-02	3	Google Play	positive	0.999435007572174
747	Best App	5	2025-05-02	3	Google Play	positive	0.999686598777771
748	faster than this version	5	2025-05-01	3	Google Play	positive	0.9991979002952576
749	Best UI mobile banking app, props to design team	5	2025-04-30	3	Google Play	positive	0.9991565942764282
750	thank you	4	2025-04-30	3	Google Play	positive	0.9998352527618408
751	great app	5	2025-04-30	3	Google Play	positive	0.999821126461029
752	bad.	1	2025-04-30	3	Google Play	negative	0.9997698664665222
753	Dashen bank always one step ahead	5	2025-04-30	3	Google Play	positive	0.9996015429496764
754	dashen super app is secure band very easy	5	2025-04-29	3	Google Play	positive	0.9899651408195496
755	It is very fast and secured mobile banking app! I like this app!	5	2025-04-29	3	Google Play	positive	0.9995939135551452
756	best app I have ever seen	5	2025-04-29	3	Google Play	positive	0.9996102452278136
757	best of best	5	2025-04-29	3	Google Play	positive	0.9997496008872986
758	waw	5	2025-04-28	3	Google Play	negative	0.7346174120903015
759	best app	5	2025-04-28	3	Google Play	positive	0.999686598777771
760	Its slow when i try to see the Recent Transaction and stucked	1	2025-04-28	3	Google Play	negative	0.9992387294769288
761	wowslnwoooo wowwww amazing !!!!!!!!	5	2025-04-28	3	Google Play	positive	0.999722182750702
762	wow appl	5	2025-04-28	3	Google Play	positive	0.9994691014289856
763	why do i have to change a pin number i use my finger print so dummy	1	2025-04-27	3	Google Play	negative	0.9994646906852722
764	very nice	5	2025-04-26	3	Google Play	positive	0.9998563528060912
765	great	4	2025-04-26	3	Google Play	positive	0.9998630285263062
982	Fantastic app	5	2025-03-01	3	Google Play	positive	0.999858856201172
766	It is very slow and it lacks many features to be a super app. High rating is given by their employees, not by the customers.	1	2025-04-25	3	Google Play	negative	0.9997708201408386
767	Smooth and secure experience transfers, bill payments, and tracking expenses are all effortless. The intuitive design makes banking on the go.	5	2025-04-24	3	Google Play	positive	0.9996446371078492
768	Very easy and Fast.	5	2025-04-24	3	Google Play	positive	0.9995487332344056
769	Incomparably user-friendly and fast app for mobile banking.	5	2025-04-24	3	Google Play	negative	0.9392751455307008
770	there is nothing super about this app, repeatedly failed transaction and wastes customer valuable time. if you have to do system upgrade do it at a time when there is less traffic demand. your Technical difficulty should not be reflected on customer.	2	2025-04-24	3	Google Play	negative	0.9993688464164734
771	execellent	5	2025-04-24	3	Google Play	negative	0.9866806864738464
772	This super app is a total game-changerΓÇöfast, reliable, and packed with everything I need in one place. ItΓÇÖs seamless and super convenient. Love it!"	5	2025-04-23	3	Google Play	positive	0.9998038411140442
773	All in One Γ£ì∩╕Åsecure Γ£ì∩╕Åreliable Γ£ì∩╕Åconvenient. Digital banking game changer!!	5	2025-04-23	3	Google Play	negative	0.759855329990387
774	it is incredible product.	5	2025-04-23	3	Google Play	positive	0.9998867511749268
775	I'm really impressed with this app! ItΓÇÖs user-friendly, runs smoothly, and has all the features I need. Makes my tasks so much easier and saves me a lot of time. Highly recommended!	5	2025-04-23	3	Google Play	positive	0.9997783303260804
776	ok	5	2025-04-23	3	Google Play	positive	0.9997851252555848
777	It's an amazing app, experience it!!	5	2025-04-23	3	Google Play	positive	0.9998760223388672
778	This is the best banking app ever. I recommend everyone to use it.	5	2025-04-23	3	Google Play	positive	0.9997599720954896
779	It is the best application!!!	5	2025-04-22	3	Google Play	positive	0.9998468160629272
780	Exceptional digital experience, SupperApp will bring new paradigm shift in the banking business. Bravo Dashen keep it up!!!!	5	2025-04-22	3	Google Play	positive	0.9998323917388916
781	its features are so dynamic	5	2025-04-22	3	Google Play	positive	0.999643087387085
782	fast &Friendly user Application.	5	2025-04-22	3	Google Play	positive	0.9993237257003784
783	Fast, Reliable and User Friendly. Keep it Up	5	2025-04-22	3	Google Play	positive	0.9997664093971252
784	#dashen super app is easy to use, secure & fast transaction≡ƒÿì	5	2025-04-22	3	Google Play	positive	0.9874821901321412
785	i love this app esp 3 click that make e-commerce easier and convinient.	5	2025-04-22	3	Google Play	positive	0.9995126724243164
786	Dashen Super App contains extended selections for customers and can be easily accessible and also friendly to use.	5	2025-04-22	3	Google Play	positive	0.9990369081497192
787	Great for everyday banking and payments on the go	5	2025-04-22	3	Google Play	positive	0.9998255372047424
788	"Dashen Super App'' is impressive with its focus on simplicity, speed, and quality. The user interface is clean and easy to understand. Transactions process quickly, and the overall quality of the app is top-notch. A must-have for Dashen Bank customers. ßï│ßê╕ßèò ßëúßèòßè¡ ßèáßèòßï╡ ßèÑßê¡ßê¥ßîâ ßëÇßï│ßêÜßìó	5	2025-04-22	3	Google Play	positive	0.9997794032096864
789	making transactions has never been easier. the new update is just amazing	5	2025-04-22	3	Google Play	positive	0.9998310804367064
790	The app has various usefull functions, which make easy the payment system. Also, it will connect with sellers having reasonable prices.	5	2025-04-22	3	Google Play	positive	0.9850904941558838
791	The app has great user interface with comprehensive payments and E-commerce platforms. And also it includes unique features such as chat Banking and budget.	5	2025-04-22	3	Google Play	positive	0.999284565448761
792	betam mirt Ena betam le atikakem kelel Yale Ena michu application nw	5	2025-04-22	3	Google Play	negative	0.9886249303817748
793	Convenient!	5	2025-04-22	3	Google Play	positive	0.9936902523040771
794	It is an amazing application that meets the needs of customers.	5	2025-04-22	3	Google Play	positive	0.999864935874939
795	Effecting payment via the app has created convenience to the recipients in easily confirming the payments received!	5	2025-04-22	3	Google Play	positive	0.973114848136902
796	the best Supper App ever	5	2025-04-22	3	Google Play	positive	0.999849796295166
797	This is the best app ever, when is it planned to include digital lending and gasification?	5	2025-04-22	3	Google Play	positive	0.9990382194519044
798	A powerful, local solution that rivals any global app. I love how easy it is to explore services and products.	5	2025-04-22	3	Google Play	positive	0.999815046787262
799	Dashen bank is my number one choice	5	2025-04-22	3	Google Play	positive	0.9996331930160522
800	Assefa Genetu = Dashen superup is the latest and inclussive .I am happy with this super up.	5	2025-04-22	3	Google Play	positive	0.9994714856147766
801	The App is incredibly user-friendly and brings multiple services into one place. It's fast, intuitive, and makes daily tasks super convenient. A true all-in-one solution!	5	2025-04-21	3	Google Play	positive	0.9991614818572998
802	Proudly made in Ethiopia, this innovation delivers more than promised. The marketplace is a major boost for local commerce	5	2025-04-21	3	Google Play	positive	0.9998248219490052
803	it so fanrastic and user friendly app. Bravo Dashen bank thanks.	5	2025-04-21	3	Google Play	positive	0.9990429282188416
804	one of the best digital platforms I've used! from smooth transactions to a seamless shopping experience, highly recommended.	5	2025-04-21	3	Google Play	positive	0.9997945427894592
805	A proudly Ethiopia innovation that delivers beyond expectations. The marketplace feature is a big win for local shoppers bnd sellers	5	2025-04-21	3	Google Play	positive	0.9997891783714294
806	Dashen Super App is a game-changer! ItΓÇÖs fast, user-friendly, and packed with features that make everyday banking and transactions super convenient. I love how everything I need from mobile banking to utility payments is all in one place. The interface is clean, and everything works smoothly. Definitely one of the best apps out there. Highly recommended!	5	2025-04-21	3	Google Play	positive	0.9998010993003844
807	Easy to use and has many options. It is the best financial app I have ever used.	5	2025-04-21	3	Google Play	positive	0.9997546076774596
808	Highly impressed! Dash Bank really nailed it with this app. Secure, reliable, and packed with features I use daily	5	2025-04-21	3	Google Play	positive	0.9998537302017212
809	One of the best digital platforms IΓÇÖve used! From smooth transactions to a seamless shopping experience, Highly recommended	5	2025-04-21	3	Google Play	positive	0.9997860789299012
810	This app has everything I was looking for, dashen is becoming a grandmaster.	5	2025-04-21	3	Google Play	positive	0.9995651841163636
811	Very convenient	5	2025-04-21	3	Google Play	positive	0.9988445043563844
812	The user experience is seamless, and everything just works perfectly right out of the box. I canΓÇÖt believe how much time and effort it saves me every day.	5	2025-04-21	3	Google Play	positive	0.9997797608375548
813	wawwwww what nice super app !!keep it up dashen bank !!	5	2025-04-21	3	Google Play	positive	0.9991359114646912
814	Dashen SuperApp the ultimate all-in-one solution! From banking and shopping to bill payments, everything you need is right at your fingertips. Life just got a whole lot easier!	5	2025-04-21	3	Google Play	positive	0.9991750121116638
815	It is,really super because of its unique offerings to individuals and businesses.It is a secure UX first app intended to cater comprehensive digital meeds.I am also happy to know that Dashen is considering to make the app more inclusive by lowering the mobile version requirements .	5	2025-04-21	3	Google Play	positive	0.9995538592338562
816	the very easy, secured, fast and multifunctional dashen supper application I ever seen. dashen really one steps ahead!!!	5	2025-04-21	3	Google Play	positive	0.99827241897583
817	One app for everything! I can shop, manage my bank account , and do so much more . Truly a super app	5	2025-04-21	3	Google Play	positive	0.9994187355041504
818	one of the best digital platforms IΓÇÖve used! From smooth transactions to a seamless shopping experie	5	2025-04-21	3	Google Play	positive	0.9995588660240172
819	Dashen Bank super App is the most suitable, reliable, and fast digital banking system.	5	2025-04-21	3	Google Play	positive	0.9992392063140868
820	Excellent app.	5	2025-04-21	3	Google Play	positive	0.99984610080719
821	This is what we call banking app. As professional I want banking app as simple as this and an app rich of features that align with my lifestyle.	5	2025-04-21	3	Google Play	positive	0.9991500377655028
822	thanks again	5	2025-04-21	3	Google Play	positive	0.9998217225074768
823	Super Easy To Use and Fast Transaction.	5	2025-04-21	3	Google Play	positive	0.996877908706665
824	I have an incredible experience with Dashen super app, what an amazing platform is it?. keep pioneering in technological advancement ≡ƒæÅ≡ƒæÅ≡ƒæÅ	5	2025-04-21	3	Google Play	positive	0.999527096748352
825	i can't recommend the Dashen Super App enough! This app is truly a game changer for anyone looking for a seamless and efficient way to manage their daily life. It combines multiple essential services into one easy-to-use platform, saving time and simplifying tasks The user interface is modern, intuitive, and super responsive, making navigation a breeze. Whether it's banking, payment services, or accessing lifestyle features, everything is just a few clicks away!!	5	2025-04-21	3	Google Play	positive	0.9953939914703368
826	The app is incredibly handy for managing multiple financial tasks, from bill payments to managing budgets. ItΓÇÖs saved me a lot of time and made banking way more convenient. Definitely worth checking out!	5	2025-04-21	3	Google Play	positive	0.9982413053512572
827	what an App	5	2025-04-21	3	Google Play	positive	0.9938238859176636
828	The new e-commerce feature is incredibly amazing and user friendly.	5	2025-04-21	3	Google Play	positive	0.9998598098754884
829	dashen bank supper app is the most easy to use and have high speed,quality and I like features like chat,budget,fuel payment, and security for my opinion this product is techonolgy edge,this international standard thanks for product oweners (dashen bank)	3	2025-04-21	3	Google Play	positive	0.9974797368049622
830	The Dashen supperapp is a revolutionary advancement in digital banking, combining exceptional usability, an intuitive interface and a seamless user experience. among its standout features are the integration of QR codes, account statement, transaction advise, chat, transaction authentication for limit thresholds, budgeting and different app in a single dashboard. Truly ahead of the curve ..... keep up the excellent work ≡ƒñ¥≡ƒæÅ	5	2025-04-21	3	Google Play	positive	0.9997472167015076
831	A proudly Ethiopian innovation that delivers beyond expectations. The marketplace feature is a big win for local shoppers and sellers. Very impressed with the new updates, The e-commerce section is smooth and supports Ethiopian merchants!	5	2025-04-21	3	Google Play	positive	0.9998795986175536
832	Very impressed with the new updates, The e-commerce section is smooth and supports Ethiopian merchants.	5	2025-04-21	3	Google Play	positive	0.9998557567596436
833	Dashen Bank Super App is fast, reliable, and super easy to use. All my banking needs are handled smoothly in one place. Clean design and seamless experience ΓÇô highly recommended!	5	2025-04-21	3	Google Play	positive	0.9997962117195128
834	Db sup app is A platform or an application that can grasp more satisfactions through fastest mode of operation which means for budget planning, to use QR code(scan, pay, go) chat with staff, acc to acc other bank ft, merchant payment, and easly. I addition to i satisfied and i invite everyone to use those platform!!.	5	2025-04-21	3	Google Play	positive	0.894790768623352
835	the chat banking and unique and only app that alow money request!!	5	2025-04-21	3	Google Play	negative	0.9822685718536376
836	Better and inclusive app!	5	2025-04-21	3	Google Play	positive	0.999285876750946
837	Amazing Application	5	2025-04-21	3	Google Play	positive	0.9998698234558104
838	It keep my time to pay my bills and I generate my satment easily	5	2025-04-21	3	Google Play	positive	0.996675968170166
839	It's an amazing app that is up-to-date with the times, wow wow	5	2025-04-21	3	Google Play	positive	0.999868392944336
840	A game-changing Ethiopian innovationΓÇöwhere shopping meets opportunity. The marketplace feature connects buyers and sellers like never before.	5	2025-04-21	3	Google Play	positive	0.9993858337402344
841	Dashen Super App isnΓÇÖt just an app ΓÇö itΓÇÖs an experience. Effortless, powerful, and built for the future	5	2025-04-21	3	Google Play	positive	0.9997283816337584
842	This Is An Amazing App with Uniqe Quality,Easy And Fast Mobile Banking App.	5	2025-04-21	3	Google Play	positive	0.9997382760047911
843	Dashen SuperApp is a lifesaver! Banking, shopping, and bills in one super easy app. The new e-commerce feature is awesome and supports local merchants. Fast, secure, and proudly Ethiopian.Download it nowΓÇöyou wonΓÇÖt regret it!	5	2025-04-21	3	Google Play	positive	0.9996484518051147
844	Dashen SuperApp blends finance, shopping, and daily services effortlessly. The new e-commerce feature is smooth and supports local merchantsΓÇöproud to back an Ethiopian-made solution!	5	2025-04-21	3	Google Play	positive	0.9998247027397156
845	A solid step forward by Dashen Bank. The SuperApp combines essential banking features with lifestyle services, making everything accessible in one place. The interface is smooth, and transactions are quick and reliable. ItΓÇÖs clear a lot of thought went into the design and functionality. Great job!	5	2025-04-21	3	Google Play	positive	0.9998260140419006
846	Dashen bank super app is the crucial and convenient app in Ethiopia. there is no other app to compare with Dashen bank super app	5	2025-04-21	3	Google Play	positive	0.9817668795585632
847	All-in-one finance & e-commerce super app! Pay, save, shop seamlessly. Fast, secure. #BankAndShop	5	2025-04-21	3	Google Play	positive	0.9943593144416808
849	A game changer in Ethiopian digital banking fast, secure, and packed with services. Everything you need, all in one powerful app. A true leap toward financial convenience and innovation!	4	2025-04-21	3	Google Play	positive	0.9996839761734008
850	easy &,simple to use	5	2025-04-21	3	Google Play	positive	0.9968307614326476
851	Banking, but make it smart. Local solutions, all in one place. Smooth, fast, and actually saving time. Feels like the future. Love it!	5	2025-04-21	3	Google Play	positive	0.999881148338318
852	All in one, that is it ≡ƒæî	5	2025-04-21	3	Google Play	positive	0.8945459127426147
853	, Dashen Bank Supper App is multipurpose, convenient, very attractive and Make life easier	5	2025-04-21	3	Google Play	positive	0.9995104074478148
854	very easy and flexible app.	5	2025-04-21	3	Google Play	positive	0.9997106194496156
855	I choose Dashen Bank Super Up since, it is easy to use & it has attractive features !	5	2025-04-21	3	Google Play	positive	0.9998281002044678
856	dashen super app is simple faster and reliable.	5	2025-04-21	3	Google Play	positive	0.999518632888794
857	Dashen Bank Super App is a game-changer! The user-friendly design, wide range of services, and smooth performance make it incredibly convenient for everyday banking. ItΓÇÖs fast, secure, and truly reflects the bankΓÇÖs commitment to digital excellence. Highly recommended!	5	2025-04-21	3	Google Play	positive	0.999748170375824
858	The app keeps getting better with every update! Smooth performance, great UI, and top-notch security. Thank you for making banking so convenient!"	5	2025-04-21	3	Google Play	positive	0.9995062351226808
859	this app is the most simply to use and secure safe i love it to use for any bank transaction	5	2025-04-21	3	Google Play	positive	0.9964408278465272
860	After i download the app recently had a smooth expriance, its user friendly, fast, and everything works as expected. keep up the good work.	5	2025-04-21	3	Google Play	positive	0.9997468590736388
861	An app with High performance and advanced features!	5	2025-04-21	3	Google Play	positive	0.9995831847190856
862	It is a very user friendly, attractive user interface, full of useful features. I really encourage everyone to give it a try.	5	2025-04-21	3	Google Play	positive	0.9997954964637756
863	Good actually , but it have to WORK when developer option is on ≡ƒÖÅ	5	2025-04-21	3	Google Play	negative	0.9746389389038086
864	All-in-one convenience, From managing accounts to paying bills and shopping online and the chat banking is game changer, this app does it all seamlessly.	5	2025-04-21	3	Google Play	positive	0.9981800317764282
865	I appreciate that Dashen Bank takes lifestyle services into account.	5	2025-04-21	3	Google Play	positive	0.9980393052101136
866	keep it up!	5	2025-04-21	3	Google Play	positive	0.9998477697372437
867	amazing app really i loved it .that's why we say dashen bank is one stap ahead. It's the best mobile application that should be on every phone.	5	2025-04-21	3	Google Play	positive	0.9998038411140442
868	very comfortable app keep it	5	2025-04-21	3	Google Play	positive	0.999691367149353
869	it has clear detail information about the application so it helps customer how to use the app. and it is very easy to use and also app is secure.	5	2025-04-21	3	Google Play	positive	0.999531626701355
870	I have been using the Dashen Supper app mobile banking app , and overall, I appreciate its features.However,IΓÇÖve noticed that when I turn on the developer options on my device, the app stops functioning properly. It would be great if you could look into this issue, as I often need to access developer settings for other applications . Thank you for your attention to this matter!	5	2025-04-21	3	Google Play	negative	0.906873881816864
871	easiness to use with fast response time	5	2025-04-21	3	Google Play	negative	0.964725911617279
872	The new mobile banking application is a major upgrade! ItΓÇÖs incredibly user-friendly, with a clean and modern design that makes navigation simple and intuitive. I really appreciate how fast it loads and how smooth the overall experience is. All essential services like balance checks, transfers, and bill payments are eas y to find and use. The added security features give me peace of mind, and the app runs reliably without crashes or glitches. ItΓÇÖs clear a lot of thought went into the user experi	5	2025-04-21	3	Google Play	positive	0.9992745518684388
873	As an Internal Customer, Dashen Bank SuperApp has greatly simplified my online banking experience. It's easy to use, allowing me to quickly check balances, transfer money and pay Bills. The app's advanced security features are highly secure, ensuring my data is well protected. The Three click, Chat Banking and IPS features have also given me a smarter experience. In deed Dashen Bank is always steping ahead!	5	2025-04-21	3	Google Play	positive	0.9990044236183168
874	A truly impressive app ΓÇö user-friendly and a game-changer in Ethiopian banking. The Dashen Super App stands out as one of the most innovative and convenient digital banking solutions in EthiopiaΓÇÖs financial history. Smooth navigation, seamless features, and a wide range of services all in one place. Well done!	5	2025-04-21	3	Google Play	positive	0.9998193383216858
875	dashen bank super up has very fast and convenience and also it has contain more things on one app .I am very interesting to use dashen bank super up	5	2025-04-21	3	Google Play	positive	0.9974090456962584
876	The Dashen Bank Super App has truly elevated my mobile banking experience. It's fast, user-friendly, and packed with all the essential features. The interface is clean and intuitive, making navigation easy even for first-time users. I also appreciate the added security features that give me peace of mind while banking on the go. Dashen Bank has done an amazing job with this appΓÇöitΓÇÖs reliable, efficient, and always improving. Highly recommended for anyone looking for seamless digital banking!	5	2025-04-21	3	Google Play	positive	0.9998351335525512
877	A fantastic product!! keep the good work.	5	2025-04-21	3	Google Play	positive	0.9998842477798462
878	I am very impressed with the Dashen super app. It is user-friendly and operates efficiently. The budget and chatbot features are impressive, and all items can be purchased with just three clicks.	5	2025-04-21	3	Google Play	positive	0.9998030066490172
879	The Dashen Super App offers a quick and user-friendly experience, bringing together a variety of services, like budgeting, payments, airtime recharges, and more, all in one convenient platform. Its sleek design and intuitive navigation ensure effortless transactions. It's evident that Dashen Bank has carefully crafted the app to make everyday financial activities easier. A great choice for anyone aiming to streamline their digital routines!	5	2025-04-21	3	Google Play	positive	0.999062716960907
880	Dashen supper App is the most useful app for our customers	5	2025-04-21	3	Google Play	positive	0.9988586902618408
881	it is the most amazing mobile app	5	2025-04-21	3	Google Play	positive	0.9998717308044434
882	A Good and fast supper app thanks for dashen bank	5	2025-04-21	3	Google Play	positive	0.999788463115692
979	In short ! I'm so proud of this app developers for their highest professional of developing. Thanks	5	2025-03-06	3	Google Play	positive	0.9998522996902466
883	Dear Users of the Dashen Bank Super App,I have been using the Dashen Bank Super App for a while now, and I must sayΓÇöitΓÇÖs truly a game-changer! The app is incredibly fast and reliable; IΓÇÖve never encountered any delays with my transactions. One feature I absolutely love is Chat Banking. It makes everyday tasks like checking my balance or transferring money as simple as sending a quick message. Also, the budgeting tool has been a huge help in tracking my spending and giving me a clearer	5	2025-04-21	3	Google Play	positive	0.9993189573287964
884	Too best	1	2025-04-21	3	Google Play	positive	0.8775487542152405
885	Dashen Bank Super Up,use the app and makes your easy,fast,convinent.	5	2025-04-21	3	Google Play	positive	0.9985912442207336
886	To join digital world use supper app and make your life easy	5	2025-04-21	3	Google Play	positive	0.9870909452438354
887	best mobile banking application	5	2025-04-21	3	Google Play	positive	0.9996380805969238
888	This banking superapp is incredibly well designed. The design and appearance of the app and the overall experience I have when using the app is fantastic. The app is packed with features from banking to e-commerce all in one place.It even has a budget setting option which is super useful for managing my money. Everything runs smoothly and I love how convenient it has made my daily life. Huge Kudos to Dashen Bank. You are truly living up to the motto ''Always one step ahead." Keep it up!	5	2025-04-21	3	Google Play	positive	0.9998156428337096
889	I was really amazed by the idea of an e-commerce service on a banking app. This is what it means to be one step ahead. Please include all kinds of products in there as soon as possible.	5	2025-04-21	3	Google Play	positive	0.9981945157051086
890	this is what we expect to get service Dashen Bank always like his slogan	5	2025-04-21	3	Google Play	negative	0.8835349082946777
891	Dashen SupApp is the most contemporary application, offering a great experience by enabling users to perform multiple tasks through a single platformΓÇösuch as chatting with friends, transferring money, paying bills, and more. It is the first app of its kind in the Ethiopian banking industry, making it a remarkable opportunity for entrepreneurs working in app-based sales and software marketing. Good job, Dashen Bank!	5	2025-04-21	3	Google Play	positive	0.9997934699058532
892	Dashen Super App gives me an amazing convenience and makes life easy.	5	2025-04-21	3	Google Play	positive	0.999823272228241
893	excellent mobile banking app	5	2025-04-21	3	Google Play	positive	0.9998179078102112
894	Wow! like his name Super App...	5	2025-04-21	3	Google Play	positive	0.9985873699188232
895	Dashen supper app is the most special. ßï¡ßê¥ßë╛ßë▒ ßï¡ßêêßï½ßï½ßêì!!!!	5	2025-04-21	3	Google Play	positive	0.9926958084106444
896	convenient and fast	5	2025-04-21	3	Google Play	positive	0.9996170997619628
897	Best- in-class app.	5	2025-04-21	3	Google Play	positive	0.999584972858429
898	I really like this amazing application and Dashen Supper app that has made my life easier.	5	2025-04-21	3	Google Play	positive	0.9997171759605408
899	Superb	5	2025-04-21	3	Google Play	positive	0.9998656511306764
900	amazing features, faster and easy to use	5	2025-04-21	3	Google Play	positive	0.9998817443847656
901	The Dashen Super App offers a modern, user-friendly experience that leverages the latest technological advancements to deliver a seamless e-commerce platform	5	2025-04-21	3	Google Play	positive	0.999481737613678
902	Best App!	5	2025-04-21	3	Google Play	positive	0.9997498393058776
903	I love it. one of the best mobile banking app in the banking industry	5	2025-04-21	3	Google Play	positive	0.999868392944336
904	I love this app	5	2025-04-21	3	Google Play	positive	0.9998608827590942
905	no working for me hulum information asgebiche continue or accept yemilew button ayeseram my phone is Samsung A51	1	2025-04-21	3	Google Play	negative	0.9980541467666626
906	waw no idea the best app.	5	2025-04-19	3	Google Play	negative	0.9923465251922609
907	fast best app	5	2025-04-19	3	Google Play	positive	0.999737560749054
908	Nice App	5	2025-04-18	3	Google Play	positive	0.9998061060905457
909	nice app ever	5	2025-04-17	3	Google Play	positive	0.9998384714126588
910	very disappointing app. Closes frequently and unstable in function	2	2025-04-17	3	Google Play	negative	0.9997677206993104
911	Feature-rich? Absolutely. But the speed? Painfully slow. Seriously, is it communicating with a server on Mars or something?	5	2025-04-16	3	Google Play	negative	0.9992289543151855
912	nic app	5	2025-04-16	3	Google Play	positive	0.9797858595848083
913	Nice	5	2025-04-16	3	Google Play	positive	0.9998552799224854
914	The Dashen Super App delivers a remarkably fast, highly secure, and exceptionally user-friendly experience, establishing it as a leading application in its category.keep it up and stay ahead Dashen Bank.	5	2025-04-14	3	Google Play	positive	0.99978905916214
915	So far so good! their in person customer service is amazing ≡ƒæÅ	5	2025-04-14	3	Google Play	positive	0.9998642206192015
916	The app is very backward and doesn't always work. If it works three hours out of 24 hours it's great!≡ƒÿÑ	1	2025-04-14	3	Google Play	negative	0.9958034157752992
917	ßê¥ßê¡ßî½ßï¼ ßèÉßïì	5	2025-04-13	3	Google Play	negative	0.7850579619407654
918	It's bad for the connection and too many days are it that not working	1	2025-04-12	3	Google Play	negative	0.9996840953826904
919	it's samart	5	2025-04-10	3	Google Play	positive	0.9992457628250122
920	The app is not working properly, I have been using it.	1	2025-04-10	3	Google Play	negative	0.999715268611908
921	it is very good app	5	2025-04-10	3	Google Play	positive	0.9998699426651
922	I had a disappointing experience with Dashen Bank's Super Up service. The app is very slow and takes forever to load during transactions, which is incredibly frustrating. Additionally, it doesn't generate receipts for any transactions, making it difficult to keep track of my expenses. I also reached out to customer support, but the response time was longer than expected. Overall, I was hoping for a better experience, but I find the service lacking and in need of improvement.	2	2025-04-09	3	Google Play	negative	0.9996039271354676
923	slow cumbersome	3	2025-04-08	3	Google Play	negative	0.9997989535331726
924	Is really ≡ƒÆÇ	2	2025-04-08	3	Google Play	positive	0.9858713746070862
925	It's slow to send OTP. it's not reliable. It crushed many times. It needs improvement in many ways	1	2025-04-07	3	Google Play	negative	0.9997294545173644
926	This is the worst mobile banking experience IΓÇÖve ever had. It doesnΓÇÖt work when you need it, and it randomly updates itself without warning. You canΓÇÖt make transactions whenever you want. ItΓÇÖs a nightmare for anyone who relies on this as their main banking option, especially those with a lot of money in their account. IΓÇÖm lucky IΓÇÖm not one of them, but still, itΓÇÖs infuriating not being able to access your money when you need it."l	1	2025-04-07	3	Google Play	negative	0.9996976852416992
980	The speed is too slow. Need some improvements.	2	2025-03-06	3	Google Play	negative	0.9997935891151428
927	I have experienced on using the app of Banks in Ethiopia, this Dashen sup is like old version of the applications for using. I gave 3 star for it's very low speed while login and processing	3	2025-04-07	3	Google Play	negative	0.9981010556221008
928	proud by dashen bank	5	2025-04-06	3	Google Play	positive	0.9998666048049928
929	best	5	2025-04-06	3	Google Play	positive	0.9997941851615906
930	This app is not working unless you turn off developer mode on your phone. So it takes your rights to just use it.	2	2025-04-04	3	Google Play	negative	0.9994447827339172
931	real super up	5	2025-04-04	3	Google Play	positive	0.9998282194137572
932	it's very disappointing fix it as soon as possible not expected from dashin bank fix it	1	2025-04-04	3	Google Play	negative	0.99936181306839
933	why dashen bank workers hidden my ATM Card ≡ƒÅº?it's a big problem to me	5	2025-04-04	3	Google Play	negative	0.999297022819519
934	tanku	5	2025-04-04	3	Google Play	negative	0.9159650802612304
935	perfect	5	2025-04-03	3	Google Play	positive	0.9998517036437988
936	goood	5	2025-04-02	3	Google Play	negative	0.9943867921829224
937	why does it ask me for both pin and opt even the opt is touch let alone both	2	2025-04-02	3	Google Play	negative	0.9958769083023072
938	it is best app easy to use	5	2025-04-01	3	Google Play	positive	0.986411154270172
939	It is very easy to use and powerful application.	3	2025-04-01	3	Google Play	positive	0.9997655749320984
940	this apps have a good feature but but some features like developer mode turn off irritate user	3	2025-04-01	3	Google Play	negative	0.997230589389801
941	This is not only a mobile banking app, it is beyond that. We will access our account easily, we are able to get many information easily here. i.e. exchage rate. We are able to chat with others, we are able to budget, we are able to transfer to other bank and within Dashen. we are able to access many accounts in a single app, we are able to pay bills in QR scan, we are able to make payments and order delivery items here in a single app. #Always one step ahead.	5	2025-03-31	3	Google Play	positive	0.989782691001892
942	wallahi very fantastic Bank	5	2025-03-31	3	Google Play	positive	0.999818742275238
943	Waw, It's amazing app. thank you Dashen Bank.	5	2025-03-31	3	Google Play	positive	0.99986732006073
944	nice app	5	2025-03-29	3	Google Play	positive	0.9998061060905457
945	IΓÇÖve been using the Dashen Bank Super App for a while now, and itΓÇÖs been a game-changer. The app is super fast and reliableΓÇöIΓÇÖve never had an issue with transactions being delayed. One of my favorite features is the chat banking, which makes it so easy to do things like check my balance or transfer money just by typing a quick message. The budgeting tool is also really useful. It helps me keep track of my spending and gives me a clear picture of where	5	2025-03-28	3	Google Play	positive	0.9992021918296814
946	nice application	4	2025-03-27	3	Google Play	positive	0.9998229146003724
947	Very good app that like it too. B/c it is very fast and easy to use.	5	2025-03-26	3	Google Play	positive	0.9998027682304382
948	best experiences	5	2025-03-26	3	Google Play	positive	0.9992781281471252
949	too slow to use.	1	2025-03-26	3	Google Play	negative	0.9997276663780212
950	ßîÑßê⌐ ßèÉßïì	5	2025-03-25	3	Google Play	negative	0.7850579619407654
951	the worst app in the market only good ui	1	2025-03-22	3	Google Play	negative	0.9997721314430236
952	nic	5	2025-03-22	3	Google Play	positive	0.9977141618728638
953	ßëáßîúßê¥ ßëàßêìßêì ßï½ßêê ßèáßìò ßëáßê¡ßë▒ßêìßèò ßêêßèáßîáßëâßëÇßê¥ ßê¥ßë╣	5	2025-03-22	3	Google Play	negative	0.920040488243103
954	thanks for all digital transaction	5	2025-03-21	3	Google Play	positive	0.9994550347328186
955	Best	5	2025-03-20	3	Google Play	positive	0.9997941851615906
956	Good	5	2025-03-20	3	Google Play	positive	0.999816119670868
957	This app is not supporting smart phones that have old android version and so it is none inclusive. At the same time the amole lite is not working properly and once you reached to maximum otp trail mistakes due to network or other errors like stacks , you will be tied up to make Transactions. Ohh... tired!!!!!	1	2025-03-20	3	Google Play	negative	0.9997400641441344
958	it's Be Come Busy &not working good	1	2025-03-20	3	Google Play	negative	0.999382257461548
959	I wanted to share some concerns about your Supper App. It appears to be experiencing reliability issues and isnΓÇÖt performing as expected. I hope this can be addressed soon to improve the user experience. One star ≡ƒîƒ for now.	1	2025-03-19	3	Google Play	negative	0.9980534315109252
960	best ever digital banking sector essay for understanding ,smart and convince for using	5	2025-03-19	3	Google Play	positive	0.9997392296791076
961	good and latest	5	2025-03-18	3	Google Play	positive	0.9998561143875122
962	The best App of all	5	2025-03-17	3	Google Play	positive	0.9998633861541748
963	Worst app ever	1	2025-03-15	3	Google Play	negative	0.9997803568840028
964	This app is the most unreliable mobile banking application I have ever used for transaction, it is very late, non-responsive and full of bugs. Its is very disappointing. It is just inconvinient, and not user friendly and compatabke at all !!!!!!	1	2025-03-14	3	Google Play	negative	0.9997894167900084
965	Naiycapp	5	2025-03-14	3	Google Play	positive	0.8075160384178162
966	The app is good but it has no USSD option	4	2025-03-13	3	Google Play	negative	0.9952346682548524
967	Hey great	5	2025-03-12	3	Google Play	positive	0.999745786190033
968	I have used many mobile banking and also tellebir and mpesa nothing come close to this app. Well done Dashen indeed one step a head. A lot of cool features that amole hasn't the receipt and the account statement is superb for me. I hope you add more integrated small apps to.	5	2025-03-12	3	Google Play	positive	0.9984980821609496
969	The app is good but it ask update every week so tiring	2	2025-03-11	3	Google Play	negative	0.9951795339584352
970	It good and easy to use	5	2025-03-11	3	Google Play	positive	0.9998750686645508
971	ßëáßîúßê¥ ßèáßê¬ßìì ßêÿßë░ßîìßëáßê¬ßï½ ßèÉßïì ßìó ßèáßêÿßêáßîìßèôßêêßêü ßìó	5	2025-03-10	3	Google Play	negative	0.920040488243103
972	Greately improved since it was released! I really like the budget and expense tegistration feature. For ATM or POS withdrawals, it is not possible to account these expenses, even if it is visible on the transactions window. If that can be worked on, it will be improve so much!!	5	2025-03-10	3	Google Play	positive	0.9655698537826538
973	Excellent	5	2025-03-10	3	Google Play	positive	0.9998434782028198
974	Wow Excellent app	5	2025-03-08	3	Google Play	positive	0.9998443126678468
975	Nice app but i experience some issues with others banks transfer it keeps saying account is not exist most of the time.	4	2025-03-08	3	Google Play	negative	0.9983522891998292
976	Add the option to send money to any telebirr account like amole does.	3	2025-03-08	3	Google Play	negative	0.995681881904602
977	It's best	5	2025-03-08	3	Google Play	positive	0.999842643737793
983	I wish dark mode feature is add as an option but it's good app	5	2025-02-27	3	Google Play	positive	0.9998013377189636
984	Super Up is the ultimate digital banking app, living up to its name with speed, efficiency, and innovation. Designed for a seamless experience, it offers lightning-fast transactions, top-tier security, and effortless financial management. With Super Up, banking has never been this smooth, smart, and super!	5	2025-02-26	3	Google Play	positive	0.9995073080062866
985	The Dashen Super App is a game-changer in digital banking, offering a seamless and convenient experience. With its user-friendly interface, fast transactions, and a wide range of financial services, it simplifies banking for customers. Features like bill payments, fund transfers, mobile top-ups, and loan applications make it an all-in-one solution. Plus, its security measures ensure safe and reliable Experiance effortless banking	5	2025-02-26	3	Google Play	positive	0.9977291226387024
986	ßè¿ßî░ßèÉßî¿ßï¿ßîá	2	2025-02-26	3	Google Play	negative	0.6970561146736145
987	It has good feature. But, it is Very Slow! difficult to pay or receive. The Speed should be improved, else I didn't recommend.	2	2025-02-24	3	Google Play	negative	0.9960646033287048
988	Excellent app	5	2025-02-24	3	Google Play	positive	0.9998356103897096
989	ßèáßìòßêìßè¼ßê╜ßèæ ßèáßê¬ßìì ßêåßèû ßê│ßêê ßë┤ßêîßëÑßê¡ ßïêßï░ßê½ßê╡ ßëÑßë╗ ßêêßê¥ßèò ßêåßèÉ ßèÑßèòßï░ ßï╡ßê«ßïì ßêêßê░ßïìßê¥ ßêÿßêïßè¡ ßëóßë╗ßêì	4	2025-02-22	3	Google Play	negative	0.9528431296348572
990	No good	1	2025-02-22	3	Google Play	negative	0.9996987581253052
991	Wow amazing app	5	2025-02-21	3	Google Play	positive	0.9998513460159302
992	best platform... Please avoid otp	5	2025-02-21	3	Google Play	positive	0.9228954911231996
993	Super smart app.	5	2025-02-18	3	Google Play	positive	0.9997984766960144
994	best ≡ƒæì≡ƒæì	5	2025-02-16	3	Google Play	positive	0.9997019171714784
995	I don't know what happens but the application is not send verification pass code you should fix that	1	2025-02-16	3	Google Play	negative	0.9973721504211426
996	This app doesn't work on my phone my phone is Samsung Galaxy s7 android version 9 All other financial apps work like telebirr CBE M_pesa...	1	2025-02-14	3	Google Play	negative	0.9974337220191956
997	Dashen Super app is secure, very easy to use and has more services uniquely like budgeting, chat, IPS...	5	2025-02-14	3	Google Play	positive	0.9937819838523864
998	Amazing and user friendly supper app and looking forward the additional features	5	2025-02-14	3	Google Play	positive	0.9998486042022704
999	it's amazing app i have seen ever	5	2025-02-13	3	Google Play	positive	0.9998574256896972
1000	One star deducted for not to able to transfer to telebirr.	4	2025-02-13	3	Google Play	negative	0.9903808236122132
1001	ßîÑßê⌐ ßèÉßïì ßîìßèò ßëáßï░ßèòßëÑ ßêèßê╕ßê╗ßêì ßï¡ßîêßëúßêì	4	2025-02-13	3	Google Play	negative	0.9046947360038756
1002	ßììßîÑßèÉßë▒ ßëáßîúßê¥ ßèáßê¬ßìì ßèÉßïì! ßèÑßèô ßëÇßêêßêì ßï½ßêê ßèÉßïì ! ßèÉßîêßê¡ ßîìßèò ßë░ßî¿ßê¢ßê¬ ßïêßï░ ßë┤ßêîßëÑßê¡ ßèñßîÇßèòßë╡ ßêÿßêïßè¬ßï½ ßèáßìò ßëóßè½ßë░ßë╡ßëáßë╡ ßîÑßê⌐ ßèÉßïì::	4	2025-02-12	3	Google Play	negative	0.9328101873397828
1003	Keep up the good work and pleas add water and electric utility payment	5	2025-02-12	3	Google Play	positive	0.9986761212348938
1004	The app missed some important features 1. It does't show recent transactions 2. Transfer to Telebirr limited to own telebirr 3. The statement does't show running balance	2	2025-02-11	3	Google Play	negative	0.9995891451835632
1005	Simple, Fast and Easy Γ¡ÉΓ¡ÉΓ¡É≡ƒÄë	4	2025-02-10	3	Google Play	positive	0.9996811151504515
1006	ßï¿ßêÜßîêßê¡ßê¥ aplication ßèÉßïì, ßèÉßîêßê¡ ßîìßèò ßëÑßê¡ ßë╡ßê½ßèòßê╡ßìêßê¡ ßê▓ßï░ßê¿ßîì ßï½ßêê ßìÆßèò ßêÿßêåßèæ risk ßèáßêêßïì ßêüßêë ßîèßï£ ßï¿ ßë╡ßê½ßèòßê╡ßìêßê¡ ßêÿßï░ßê¥ßï░ßêÜßï½ ßìÆßèò ßêÿßêåßèò ßèáßêêßëáßë╡!!!!!!!!!!!!:: ßèáßê▒ ßëóßê╡ßë░ßè½ßè¿ßêì 5 star ßèáßê╡ßè¿ßï¢ßïì ßîìßèò 4 ßê░ßîÑßë╗ßêêßïì::	4	2025-02-09	3	Google Play	negative	0.8565710783004761
1007	Baankii daashin baankii hudna galeessa galatoomaa isinii woliin jirra Godina jimmaa magaalaa Aggaaroo irraa Muaz Abamecha Abamilki	5	2025-02-07	3	Google Play	negative	0.9961472749710084
1008	It doesn't work	1	2025-02-07	3	Google Play	negative	0.9997813105583192
1009	#Dashen Super App; Super easy to use, secure, and fast transaction. Love it!	5	2025-02-07	3	Google Play	positive	0.99981027841568
1010	I tried the new Dash Bank Super App today, and it's amazingly easy and fun.I recommend you download and use it. You really like it	5	2025-02-06	3	Google Play	positive	0.9998507499694824
1011	Gud app kegza ga mezmn endze new aind ermjh kedme nachu hlam	5	2025-02-06	3	Google Play	negative	0.985221803188324
1012	Good app, bad security	3	2025-02-06	3	Google Play	positive	0.989300549030304
1013	On Transaction page only show sent Transaction. Try to include received transaction.	4	2025-02-06	3	Google Play	negative	0.9956958293914796
1014	Wonderful Application ≡ƒÿì	5	2025-02-05	3	Google Play	positive	0.9998589754104614
1015	I loved it	5	2025-02-05	3	Google Play	positive	0.9998809099197388
1016	ßèáßêüßèò ßîêßèô ßèáßèòßï╡ ßèÑßê¡ßê¥ßîâ ßëÇßï░ßê¢ßë╜ßïì	5	2025-02-04	3	Google Play	negative	0.8832125663757324
1017	I am so thankful for having this best app Dashen one step ahead	5	2025-02-04	3	Google Play	positive	0.999471127986908
1018	Not good this app	1	2025-02-04	3	Google Play	negative	0.9997790455818176
1019	Best app	5	2025-02-04	3	Google Play	positive	0.999686598777771
1020	Excellent app ever but it needs improvement on speed and transaction lists	1	2025-02-03	3	Google Play	negative	0.990936815738678
1021	Perfect	5	2025-02-02	3	Google Play	positive	0.9998517036437988
1022	It does not work functional ,	1	2025-02-02	3	Google Play	negative	0.9997901320457458
1023	Ok	5	2025-02-02	3	Google Play	positive	0.9997851252555848
1024	all of dashen bank customers use the application it is good to use	5	2025-02-01	3	Google Play	positive	0.9958037734031676
1025	Gret experience	5	2025-02-01	3	Google Play	negative	0.7600295543670654
1026	All good we need more	3	2025-01-31	3	Google Play	positive	0.9996538162231444
1027	Dashen super app is easy to use, fast and robust	5	2025-01-31	3	Google Play	positive	0.9997517466545104
1028	it was amazing app.....thank you dashen bank....	5	2025-01-30	3	Google Play	positive	0.9998608827590942
1029	Dashen bank super app for easy life.	5	2025-01-30	3	Google Play	positive	0.772305965423584
1030	Excellent UI/UX and beyond Banking services≡ƒæì≡ƒæì	5	2025-01-30	3	Google Play	positive	0.9995208978652954
1031	Send to oher bank ßï¿ßêÜßêêßïë ßïëßê╡ßîÑ ßîêßëÑßë░ßèò ßïêßï░ addisinternational bank ßêêßêÿßêïßè¡ ßèáßï¡ßê░ßê½ßê¥ ßêüßêêßë░ßè¢ ßï░ßîìßê₧ ßïêßï░ cbe birr ßêêßêÿßêïßè¡ account number ßï¡ßîáßï¡ßëâßêì ßê₧ßëúßï¡ßêì ßèÉßëáßê¡ ßèÉßïë ßêÿßîáßï¿ßëà ßï½ßêêßëáßë╡ ßï¡ßêÿßê╡ßêêßè¢ßêì	2	2025-01-29	3	Google Play	negative	0.9945861101150512
1032	Just Wow	5	2025-01-29	3	Google Play	positive	0.999775230884552
1033	mobile banking to the next level	5	2025-01-28	3	Google Play	positive	0.9409880042076112
1057	it's not working	3	2025-06-05	1	Google Play	negative	0.9997857213020324
1034	The first 3 star review is me	3	2025-01-25	3	Google Play	positive	0.9967767596244812
1035	Is not working	1	2025-01-25	3	Google Play	negative	0.9997809529304504
1036	Fast, reliable and user friendly. Amazing chatting features. Keep it up! Always one step ahead!	5	2025-01-24	3	Google Play	positive	0.9998725652694702
1037	V good Γ¥ù∩╕Å	5	2025-01-24	3	Google Play	positive	0.9993855953216552
1038	This app is literally the best thing ever The chat banking is so easy just text and itΓÇÖs done Super smooth, fast, and honestly a life saverIf you havenΓÇÖt downloaded it yet youΓÇÖre missing out big time	5	2025-01-23	3	Google Play	positive	0.9862456321716307
1039	I only see white page	2	2025-01-23	3	Google Play	negative	0.9910238981246948
1040	Excellent banking app for all your needs! Who needs a physical branch when you can use Dashen Bank Super App Instead! I've never had an issue with anything that Dashen Bank Super App haven't handled swiftly and resolved to my satisfaction and above I don't often write reviews but this is an app/bank that I would highly recommended to everyone ≡ƒÆ» ≡ƒæî≡ƒæì	5	2025-01-22	3	Google Play	positive	0.9994206428527832
1041	Amizing Application ≡ƒÿì	5	2025-01-22	3	Google Play	negative	0.9905143976211548
1042	Fastest and easy to use	5	2025-01-22	3	Google Play	positive	0.9997114539146424
1043	ßê╡ßê¥ ßëÑßë╗ ≡ƒÿÅ	2	2025-01-21	3	Google Play	negative	0.8337247967720032
1044	Exellent app with exellent banking system and exellent bank ever	5	2025-01-21	3	Google Play	negative	0.9579959511756896
1045	Amazing app to use as usual! But why option of transferring to Telebirr and M pesa which was available on Amole app is omitted?? Dasheen is my favourite keep it up.	4	2025-01-20	3	Google Play	positive	0.9711759686470032
1046	Needs some improvement	5	2025-01-20	3	Google Play	negative	0.998008668422699
1047	Amazing	5	2025-01-20	3	Google Play	positive	0.999875545501709
1048	Amazing super app	5	2025-01-19	3	Google Play	positive	0.9998658895492554
1049	I hope it will be better than amole	5	2025-01-18	3	Google Play	positive	0.9969701766967772
1050	Wly Super App ilove it Γ¥ñ∩╕Å ≡ƒÿì ≡ƒÆû ≡ƒÆò	5	2025-01-18	3	Google Play	negative	0.9463616013526917
1051	Dashen yichalal. Ewnetem one step a head	5	2025-01-17	3	Google Play	negative	0.9832626581192015
1052	It has a Good performance but need more upgrade for more performance like when we login account not be fast balance show other thing looking good. Carry on. Thanks so much for Greatest service	4	2025-01-17	3	Google Play	positive	0.9967933297157288
1053	It is a very wonderful work that has saved its time. That is why it is "Always one step ahead!"	5	2025-01-17	3	Google Play	positive	0.99988055229187
1054	ΓÇ£Life-changing!ΓÇ¥ I canΓÇÖt imagine going back to traditional banking after using this app. ItΓÇÖs so convenient.	5	2025-01-17	3	Google Play	positive	0.9968047142028807
1055	Pro max	5	2025-01-17	3	Google Play	positive	0.9984601736068726
1056	The most good app and easy	5	2025-01-16	3	Google Play	positive	0.9998631477355956
1058	Hello, IΓÇÖm facing a problem with the BOA Mobile app. Every time I enter my phone number and password, the app crashes and shows an error that says ΓÇ£BoaMobile closed because this app has a bug.ΓÇ¥ I tried updating, reinstalling, and clearing cache, but nothing worked. Please fix this bug in the next update. I really need access to my account. Thank you.	1	2025-06-03	1	Google Play	negative	0.999415159225464
1059	exceptional	5	2025-06-03	1	Google Play	positive	0.9998514652252196
1060	BoA Mobile good bank	5	2025-06-02	1	Google Play	positive	0.9984728693962096
1061	this is worest app 24/7 loading	1	2025-06-01	1	Google Play	negative	0.993474304676056
1062	This App is not interest for Android phone Please update it .	1	2025-06-01	1	Google Play	negative	0.9971383810043336
1063	BoA system is confartable	5	2025-06-01	1	Google Play	negative	0.9980142116546632
1064	this app, for me , is a waste of time. It doesn't work . I can't even long in, and it really piss me off. FIX THE PROBLEM	1	2025-05-27	1	Google Play	negative	0.99980491399765
1065	Good service.	3	2025-05-25	1	Google Play	positive	0.9998533725738524
1066	the app crush frequently	1	2025-05-24	1	Google Play	negative	0.998525083065033
1067	good	5	2025-05-22	1	Google Play	positive	0.999816119670868
1068	You guys keeps getting worst	1	2025-05-22	1	Google Play	negative	0.9997075200080872
1069	This app is a joke. It crashes more than it works, takes forever to load, and half the features are just decorative at this point. CanΓÇÖt log in, canΓÇÖt transfer money, canΓÇÖt even check my balance without it bugging out. To the developer: Are you actually trying to make this work, or is this some kind of social experiment to test our patience? Did you build this in your sleep? Because it definitely looks like it. If this is your idea of a functional app, maybe consider a different career path≡ƒÖÅ	1	2025-05-21	1	Google Play	negative	0.999026656150818
1070	BoA	2	2025-05-20	1	Google Play	negative	0.7410509586334229
1071	but not opening on android	4	2025-05-19	1	Google Play	negative	0.9952228665351868
1072	Worst App ever. Totally unreliable. And it didn't work at all for the last 4 months.	1	2025-05-18	1	Google Play	negative	0.9997984766960144
1073	amazing	5	2025-05-18	1	Google Play	positive	0.999875545501709
1074	excellent app	4	2025-05-16	1	Google Play	positive	0.9998356103897096
1075	excellent	5	2025-05-15	1	Google Play	positive	0.9998434782028198
1076	ßê₧ßêïßï¼ ßè¿ßëáßï░	5	2025-05-14	1	Google Play	negative	0.7850579619407654
1077	this app does no work on Samsung a51, it just gives a preview of the logo	1	2025-05-11	1	Google Play	negative	0.9992283582687378
1078	nice	5	2025-05-10	1	Google Play	positive	0.9998552799224854
1079	i entered incorrect security question by mistake boa app lock pin forever, why is there no other options? ?? i contacted different branchs more then 4times but they didn't able to solve this issue .	5	2025-05-10	1	Google Play	negative	0.9994921684265136
1080	Best app	5	2025-05-09	1	Google Play	positive	0.999686598777771
1081	liking this application good ≡ƒæì	5	2025-05-07	1	Google Play	positive	0.9996829032897948
1082	This app future is good, but there is problems with apps to reset and activate it, which is difficult even to the branch staffs, and it takes too long times to active at the branch plus most of the time high expected failure of activation after process at the counter and OTP sent not work	1	2025-05-06	1	Google Play	negative	0.9989790916442872
1083	good	4	2025-04-30	1	Google Play	positive	0.999816119670868
1084	wow	5	2025-04-28	1	Google Play	positive	0.999592125415802
1085	it's really good ≡ƒæì	5	2025-04-23	1	Google Play	positive	0.9998701810836792
1086	Bad app . it stuck when you open and noting WORKS.	1	2025-04-23	1	Google Play	negative	0.9995198249816896
1087	the app isn't working after it asked me the password it starts loading, but it doesn't open	3	2025-04-20	1	Google Play	negative	0.9997255206108092
1088	Best	2	2025-04-19	1	Google Play	positive	0.9997941851615906
1089	It keeps showing this pop up to turn off developer options even tho it's off! I had to turn on and then off to make it work! This is a horrible experience and needs a fix asap! Plus kinda slow.	1	2025-04-19	1	Google Play	negative	0.999669909477234
1090	yideg	1	2025-04-18	1	Google Play	negative	0.7675832509994507
1091	ßèáßï¡ßè¿ßììßë╡ßê¥ ßèÑßè«	1	2025-04-17	1	Google Play	negative	0.7850579619407654
1092	great boa	5	2025-04-10	1	Google Play	positive	0.9992689490318298
1093	Best	5	2025-04-10	1	Google Play	positive	0.9997941851615906
1094	boa of mobile backing	5	2025-04-09	1	Google Play	negative	0.980626106262207
1095	faster bank of Abissinya	5	2025-04-08	1	Google Play	positive	0.9722140431404114
1096	i would have given it a lower if it was possible because it crush so much and it take the bank so long to fix the bug	1	2025-04-08	1	Google Play	negative	0.9996716976165771
1097	it just doesn't work...so frustrating	1	2025-04-07	1	Google Play	negative	0.999774158000946
1098	like	5	2025-04-06	1	Google Play	positive	0.9910564422607422
1099	it's not work correctly... you must have update it	1	2025-04-06	1	Google Play	negative	0.9998013377189636
1100	the app gets a considerable improvements like language , QR scanner and unlimited transfers survice. but BOA Please do alot on its fastness and convenient when we login and making a transactions.	5	2025-04-04	1	Google Play	positive	0.9575355648994446
1101	after i typed in my password it says successfully logged out ...and goes back to the first page	2	2025-04-04	1	Google Play	negative	0.5856828093528748
1102	good but they don't update enough don't add new things	3	2025-04-04	1	Google Play	negative	0.969367742538452
1103	very good	5	2025-04-03	1	Google Play	positive	0.9998520612716676
1104	thank you	5	2025-04-02	1	Google Play	positive	0.9998352527618408
1105	it doesn't work period z slowest mobile banking ever i would rather use *815#	1	2025-04-01	1	Google Play	negative	0.9990907907485962
1106	after activated the application it not allowed to sign , automatically it is turn off In my phone, why ?	1	2025-03-31	1	Google Play	negative	0.9973751306533812
1107	good application	5	2025-03-30	1	Google Play	positive	0.999854564666748
1108	this version is not working for me I cannot even buy card. I cannot send money	1	2025-03-30	1	Google Play	negative	0.9995684027671814
1109	It can't actively on initialization, it says incorrect OTP getting the exact OTP	1	2025-03-29	1	Google Play	negative	0.9996182918548584
1110	always problematic hardly works	1	2025-03-26	1	Google Play	negative	0.99955552816391
1111	considering the fact the bank is huge this app really bad you could do better	1	2025-03-25	1	Google Play	negative	0.9997418522834778
1112	best app	5	2025-03-25	1	Google Play	positive	0.999686598777771
1113	worst app and Bank ever u be ashamed, scammer	1	2025-03-24	1	Google Play	negative	0.9998050332069396
1114	great BoA	5	2025-03-22	1	Google Play	positive	0.9992689490318298
1115	best	5	2025-03-21	1	Google Play	positive	0.9997941851615906
1116	i have went to the bank so many times because i couldn't make any transaction i can only see my balance nothing else so what is the point of having mobile banking if i can't make any transaction with it please work in that	1	2025-03-21	1	Google Play	negative	0.9988333582878112
1117	there is no speed	1	2025-03-19	1	Google Play	negative	0.9994422793388368
1118	For anyone who wants to download it, just don't!!!	1	2025-03-19	1	Google Play	negative	0.999398112297058
1119	wonderful	5	2025-03-19	1	Google Play	positive	0.9998772144317628
1120	all worck	5	2025-03-19	1	Google Play	negative	0.9971314668655396
1121	Loved it	5	2025-03-14	1	Google Play	positive	0.9998797178268432
1122	Wow	1	2025-03-14	1	Google Play	positive	0.999592125415802
1123	Edit: New bug, app not letting me type in my otp codes. Shameful Why does this app not allow me to use it while having developer options on? Did y'all consider that I might, perhaps, be an actual developer? Why am I expected to toggle the option on and off just to bank (restarting my phone when I do)? Why is the message labled as somthing that will "smoothen" the experience? This is like the most "security consultant" thing to implement in an app. Please invest in actual security, not this mess.	1	2025-03-12	1	Google Play	negative	0.9985970854759216
1124	Improved to be the best	5	2025-03-11	1	Google Play	positive	0.9998570680618286
1125	BoA	5	2025-03-11	1	Google Play	negative	0.7410509586334229
1126	Decent, but there problems sometimes it says error When i transfer money but infact it transferred because of this bug i transferred 2 times instead of 1 and also we can't transfer money to others telebirr acc we only can to our self BOE Dev fix this !!!	3	2025-03-11	1	Google Play	negative	0.99748432636261
1127	BoA Greqt Ethiopian bank.	5	2025-03-11	1	Google Play	negative	0.8457719683647156
1128	The bug is still there,the app crashes every time i try to log in, especially in old phones like my Galaxy A32	1	2025-03-10	1	Google Play	negative	0.9994600415229796
1129	Almost better compared to cbe where it is not qualified for	4	2025-03-09	1	Google Play	negative	0.974167823791504
1130	what awesome apps. it is very simple to use and more much important apps.	5	2025-03-09	1	Google Play	positive	0.9998214840888976
1131	Wonderfull app	5	2025-03-08	1	Google Play	positive	0.9998815059661864
1132	i can't use this app why?	5	2025-03-07	1	Google Play	negative	0.9993101358413696
1133	Worst mobile banking app I ever experienced I was blaming other apps but comparing with this they're too much better!!!! It clashes it takes much longer time to login while loading in short it's a complete of trash	1	2025-03-06	1	Google Play	negative	0.9997013211250304
1134	Wow	4	2025-03-05	1	Google Play	positive	0.999592125415802
1135	bro the worst app made by human kind!! as a software engineer it make me so sad seeing enterprise as big as BOA make apps like this. it is a disgrace for our country!!	1	2025-03-05	1	Google Play	negative	0.9998133778572084
1136	AGA B Girja Miss language of admin Afaan oromo & other Itoophiyaa languages	1	2025-03-04	1	Google Play	negative	0.9959415793418884
1137	Good app	5	2025-03-03	1	Google Play	positive	0.9998493194580078
1138	I downloaded the app for the first time while reading other customers reviews and as soon as i installed and opened the app it closes back automatically, what unserious bank, now i uninstalled the app immediately	1	2025-03-03	1	Google Play	negative	0.9916398525238036
1139	It has good features but sometimes it doesn't work...0	1	2025-03-02	1	Google Play	negative	0.9956711530685424
1140	Very poor proformance	1	2025-03-01	1	Google Play	negative	0.9998043179512024
1141	It's not opening. Really frustrating	1	2025-03-01	1	Google Play	negative	0.9997020363807678
1142	Verry Amazing App from all IB	5	2025-03-01	1	Google Play	positive	0.9997394680976868
1143	Not working on this days	1	2025-02-26	1	Google Play	negative	0.9972773194313048
1144	Thank you BoA	5	2025-02-23	1	Google Play	positive	0.9998399019241332
1145	best banking app in the wworld	5	2025-02-22	1	Google Play	positive	0.999572217464447
1146	Nice app and it's easy to use	5	2025-02-21	1	Google Play	positive	0.999751627445221
1147	please add language in the apps setting(amharic afan oromo, tigniya,and others) sometimes bank to bank transfer is not available through time and even if if it is available not reachableΓÇªit is serious issue!	1	2025-02-15	1	Google Play	negative	0.999267876148224
1148	This is help full i like ittttt	5	2025-02-14	1	Google Play	positive	0.9977995753288268
1149	The is not functional at all?	2	2025-02-12	1	Google Play	negative	0.9997331500053406
1150	Best bank	5	2025-02-08	1	Google Play	positive	0.9997438788414
1151	Make it easy and convienient to use and perfect for all to high prefrence and choice.	3	2025-02-07	1	Google Play	positive	0.9997236132621764
1152	≡ƒç¬≡ƒç╣≡ƒç¬≡ƒç╣≡ƒç¬≡ƒç╣≡ƒç¬≡ƒç╣≡ƒç¬≡ƒç╣≡ƒç¬≡ƒç╣≡ƒæì≡ƒæì≡ƒæì≡ƒæì≡ƒæì≡ƒæì≡ƒæì	5	2025-02-04	1	Google Play	negative	0.6970561146736145
1153	I have been using this app for two years.It is amazing.	5	2025-02-01	1	Google Play	positive	0.9998595714569092
1154	Good ≡ƒæì	5	2025-01-31	1	Google Play	positive	0.9998576641082764
1155	Sad experience	1	2025-01-30	1	Google Play	negative	0.999068796634674
1156	Always do update and that is annoying	3	2025-01-27	1	Google Play	negative	0.9994439482688904
1157	Best app, somehow waiting a few minutes	5	2025-01-23	1	Google Play	negative	0.6387032866477966
1158	I can't dijitalize my atm in the apollo app on my phone	1	2025-01-22	1	Google Play	negative	0.9946038126945496
1159	Whenever I try to sign in app close please fixed it out	2	2025-01-21	1	Google Play	negative	0.997660994529724
1160	Beter	5	2025-01-21	1	Google Play	positive	0.6771957278251648
1161	Boa	4	2025-01-18	1	Google Play	negative	0.7410509586334229
1162	ßëáßîúßê¥ ßï¿ßêÜßï½ßê╡ßîáßêï ßèáßìò ßëáßîúßê¥ ßï¿ßïêßê¿ßï░ ßï£ßê« ßèÉßïì ßï¿ßê¥ßê░ßîáßïì ßïÿßê« It's not App it's very slow ehhhh. Why don't you upgrade the app???? It's always zero	1	2025-01-18	1	Google Play	negative	0.9979276657104492
1163	Aadan Axmed Barkhadle	5	2025-01-17	1	Google Play	positive	0.6127505898475647
1164	≡ƒÿí≡ƒÿí≡ƒÿí≡ƒñ¼≡ƒñ¼≡ƒñ¼	1	2025-01-16	1	Google Play	negative	0.6970561146736145
1165	Horrible customer service and app crashes Horrible!!	1	2025-01-15	1	Google Play	negative	0.9997913241386414
1166	I love it	5	2025-01-14	1	Google Play	positive	0.9998799562454224
1167	It keeps asking me to turn off developer mode even when dev mode is off. Couldn't use it.	1	2025-01-13	1	Google Play	negative	0.9985793828964232
1168	Good≡ƒÖÅ	5	2025-01-12	1	Google Play	negative	0.6970561146736145
1169	Like to much	5	2025-01-11	1	Google Play	positive	0.9997984766960144
1170	Thank you	5	2025-01-10	1	Google Play	positive	0.9998352527618408
1171	Perfect	5	2025-01-09	1	Google Play	positive	0.9998517036437988
1172	The best of best	5	2025-01-09	1	Google Play	positive	0.9998393058776855
1173	I was using this app for long time it amazing user friendly UI but the i can't found for get pin button in the app	3	2025-01-07	1	Google Play	negative	0.901660144329071
1174	Boa	5	2025-01-06	1	Google Play	negative	0.7410509586334229
1175	Great ≡ƒæì	5	2025-01-04	1	Google Play	positive	0.9997692704200744
1176	Fast and suitable for the customers.	5	2025-01-04	1	Google Play	positive	0.9997920393943788
1177	Good app and helpful	5	2025-01-03	1	Google Play	positive	0.9998565912246704
1178	I will give only one star, because it faced with multiple of problems. 1. The app is not as fast as the other banks App, for e.g like CBE 2. The App asks repeatedly to switch off developer options, even if it is switched off. 3. Bank of Abyssinia's services are interesting, but they ignored the issues on the App service. 4. Most customers gave a complain on the App, but no one accept their complain to fix the issue. 5. Lastly, I will not recommend the App unless the issue has been solved ASAP!!	1	2025-01-03	1	Google Play	negative	0.9978498220443726
1179	By assessing this you can tell Abyssinia bank has no idea what mobile banking is ?	1	2025-01-02	1	Google Play	negative	0.9992759823799132
1180	It doesn't work at all.	2	2025-01-02	1	Google Play	negative	0.9997771382331848
1181	this app is not available	1	2025-01-02	1	Google Play	negative	0.9997593760490416
1182	Wow what amazing	5	2024-12-30	1	Google Play	positive	0.9998555183410645
1183	love it	5	2024-12-30	1	Google Play	positive	0.99987530708313
1184	ßëáßîúßê¥ ßêÿßê╗ßê╗ßêì ßèáßêêßëáßë╡....... ßêê ßëúßèòßè⌐ ßê¢ßï¡ßêÿßîÑßèò ßêÿßë░ßîìßëáßê¡ßï½ ßèÉßïì ::	2	2024-12-30	1	Google Play	negative	0.9733066558837892
1185	Lemn embi yilal??	5	2024-12-30	1	Google Play	negative	0.990697145462036
1186	Good	5	2024-12-30	1	Google Play	positive	0.999816119670868
1187	It's useless app downgraded.	1	2024-12-29	1	Google Play	negative	0.999807059764862
1188	Why is not letting me access my account. The whole point of this app is for me to gey access to my account without physically being at the bank. I would give it a zero but a one will suffice to get my point accross.	1	2024-12-27	1	Google Play	negative	0.7652336359024048
1189	Nice	5	2024-12-26	1	Google Play	positive	0.9998552799224854
1190	When are you going to get rid of this and have a real app that works? By far the worst mobile banking app.	1	2024-12-24	1	Google Play	negative	0.9997933506965636
1191	ßèáßï¡ßê░ßê½ßê¥ ßê╝ßê¥ ßèÉßïìßìñ	1	2024-12-23	1	Google Play	negative	0.8616324663162231
1192	Not that much bad	3	2024-12-22	1	Google Play	positive	0.998815894126892
1193	Fine	5	2024-12-21	1	Google Play	positive	0.9998335838317872
1194	The dirtiest application ever seen...	1	2024-12-20	1	Google Play	negative	0.995487630367279
1195	Nic ap	5	2024-12-19	1	Google Play	positive	0.9873362183570862
1196	The forest app ever	1	2024-12-19	1	Google Play	positive	0.9840953946113586
1197	I love BoA more than anyone but they are cursed when it comed to mobile banking. Even though this ine is hetter it still s*cks! It will ask me to turn off developer options other wise it won't work! I use CBE, Awash birr, tekebirr, Dashen bank and others but non of them asked me this, why only BoA? Please improve your mobile banking, be competitive!	1	2024-12-19	1	Google Play	negative	0.9967040419578552
1198	Bank of abissena	1	2024-12-17	1	Google Play	positive	0.948011875152588
1199	Good	3	2024-12-16	1	Google Play	positive	0.999816119670868
1200	Easy and sooo simple to use it, also its easy to stole someones money using the app	3	2024-12-16	1	Google Play	negative	0.9888866543769836
1201	GOOD	5	2024-12-15	1	Google Play	positive	0.999816119670868
1202	The worst banking app ever. Never works!	1	2024-12-14	1	Google Play	negative	0.999800741672516
1203	Poorly functioning app	3	2024-12-13	1	Google Play	negative	0.999775230884552
1204	Very nice	5	2024-12-13	1	Google Play	positive	0.9998563528060912
1205	Your system is the worst you should do better≡ƒÿí≡ƒÿí≡ƒÿí≡ƒÿí≡ƒÿí≡ƒÿí	2	2024-12-11	1	Google Play	negative	0.999800741672516
1206	It has been a while since you guys started giving the mobile app service but still couldn't get it to work. I'm sure you know that it doesn't work already but not sure if you're lazy or incompetent to fix it. You are losing business because of this. Complacency will have consequences.	1	2024-12-10	1	Google Play	negative	0.9997615218162536
1207	This is the best app; many features are awesome, but it should work without the need to turn off the developer options. I'm tired of having to constantly switch the developer options off and on. I've been expressing my struggles about this. I have precious settings enabled in the developer options, and to open the App Boa app, I have to turn them off. Please help us, Abyssinia Bank. I hope you can provide an update soon.	4	2024-12-08	1	Google Play	positive	0.9543284177780152
1208	IΓÇÖm giving this app one star because there are no options below that. My experience has been incredibly frustrating due to the extremely long loading times, and the app even closes automatically at times. People choose mobile banking for its convenience, but this app is far too time-consuming, making it the worst IΓÇÖve used. I hope improvements are made to enhance the user experience.	1	2024-12-07	1	Google Play	negative	0.9997000694274902
1209	Very unprofessional and mischievous bank in my opinion. I have had several occasions but recently I used Abyssinia Card to withdraw money and it was deducted from my account but despite reporting several times they said they are processing it but I learned yesterday that since it has been 3 months the bank has decided to include it in their income. How absurd. If you can avoid this bank.	1	2024-12-06	1	Google Play	negative	0.9941067695617676
1210	It doesn't work on my 2 devices A05 and A34 ≡ƒÿí	1	2024-12-02	1	Google Play	negative	0.9996792078018188
1211	It's better to say I don't use boa rather than pulling your phone out and opening this app	1	2024-12-01	1	Google Play	negative	0.9981752634048462
1212	My attention is very important because it will be the most difficult time for me	5	2024-11-30	1	Google Play	positive	0.992617666721344
1213	I have a worst experience while using this mobile application through out the year. Most of the time it fails to "Login" or automatically closed the app. And also it takes so much loading time (5 minutes +) trying to access the internal services. Sometimes also while transferring within and to other bank also fails. So, BOA please fix your app.	1	2024-11-29	1	Google Play	negative	0.999800145626068
1214	I don't know why but your apps start out great then all of a sudden don't work≡ƒñ╖ΓÇìΓÖÇ∩╕Å	1	2024-11-28	1	Google Play	positive	0.8064287900924683
1215	This application is losing major factions on a daily basis. I can count how many times I have used this app; it is completely useless and disappointing if I am not going to use it in times of need then I don't see the point.	1	2024-11-28	1	Google Play	negative	0.99979966878891
1216	exellent digital transaction of money	5	2024-11-27	1	Google Play	negative	0.994447946548462
1217	The latest update has stopped android 9 phones not to open this App. Never work properly since i started using it.	1	2024-11-26	1	Google Play	negative	0.999749720096588
1218	Great	5	2024-11-25	1	Google Play	positive	0.9998630285263062
1219	≡ƒæÅ≡ƒæÅ≡ƒæÅ	5	2024-11-24	1	Google Play	negative	0.6970561146736145
1220	Money	5	2024-11-24	1	Google Play	positive	0.9659327268600464
1221	It needs more improvment	2	2024-11-24	1	Google Play	negative	0.998616099357605
1222	Hey Google	5	2024-11-21	1	Google Play	positive	0.9950044751167296
1223	ab	3	2024-11-20	1	Google Play	positive	0.960319757461548
1224	Ademtahir	5	2024-11-20	1	Google Play	positive	0.9930111765861512
1225	Γ£î∩╕ÅΓ£î∩╕Å	5	2024-11-20	1	Google Play	negative	0.6970561146736145
1226	Please this app on my android phone	3	2024-11-20	1	Google Play	positive	0.6488653421401978
1227	GOAT ≡ƒÉÉ ≡ƒÉÉ	5	2024-11-19	1	Google Play	negative	0.9337345957756042
1228	Your app doesn't match your bank, the app is disaster, super slow. Please learn something from tele birr app.	1	2024-11-19	1	Google Play	negative	0.9994460940361024
1229	Fast and reliable	5	2024-11-18	1	Google Play	positive	0.9998595714569092
1230	The worst app update ever. Why would you include the "developer option off" thing here? Why do you care? It is my phone my money, right? That is the reason why I switched to other banks. So either turn it off or everyone will discontinue their business one by one.	1	2024-11-17	1	Google Play	negative	0.9998020529747008
1231	Very good	5	2024-11-14	1	Google Play	positive	0.9998520612716676
1232	One of the poorest mobile banking system	1	2024-11-13	1	Google Play	negative	0.999756634235382
1233	Γ¥ñΓ¥ñΓ¥ñΓ¥ñΓ¥ñΓ¥ñ	5	2024-11-12	1	Google Play	negative	0.6970561146736145
1234	Oene	5	2024-11-12	1	Google Play	positive	0.8278868198394775
1235	i find it interesting specially in reciept downloading	1	2024-11-12	1	Google Play	positive	0.9981314539909364
1236	it good	5	2024-11-12	1	Google Play	positive	0.9998427629470824
1237	This app crashes everytime, please fix it	1	2024-11-12	1	Google Play	negative	0.9996472597122192
1238	ßèáßèòßï╡ star ßê½ßê▒ ßï¡ßëáßï¢ßëáßë│ßêìßìó i dont recomend to use this app also the bank	1	2024-11-12	1	Google Play	negative	0.9964038133621216
1239	I need a support the app is not working	5	2024-11-12	1	Google Play	negative	0.9998034834861756
1240	Bast bank of ethiopia	5	2024-11-12	1	Google Play	positive	0.9978061318397522
1241	very slow app. ßèáßëóßê▓ßèÆßï½ßèò ßè¿ßêÜßï½ßè¡ßêì ßëúßèòßè¡ ßï¿ßê¢ßï¡ßîáßëáßëà software app. ßè¿ßë╗ßêïßë╜ßêü ßêÖßêë ßêêßêÖßêë ßèÑßèòßï░ßîêßèô ßèáßê░ßê⌐ßë╡ßìóßëáßîúßê¥ ßï¡ßêÿßê½ßï½ßêì ßï½ßê│ßììßê½ßêìßìóßêêapp ßï¿ßïêßîúßïì ßïêßî¡ ßëáßêÖßê╡ßèô ßï¿ßë░ßëáßêï ßèÉßïì ßï¿ßêÜßêÿßê╡ßêêßïìßìó	1	2024-11-12	1	Google Play	negative	0.9990527033805848
1242	thank you for your social services like, vertual banking, non touch ATM, Cadrless and withdrwal with out passbook...	5	2024-11-12	1	Google Play	positive	0.9878897070884703
1243	The worst App i have never seen like this before	1	2024-11-12	1	Google Play	negative	0.999774158000946
1244	Wweeeer	4	2024-11-12	1	Google Play	negative	0.8910730481147766
1245	Infinx	5	2024-11-12	1	Google Play	negative	0.9042556881904602
1246	Great service	5	2024-11-12	1	Google Play	positive	0.9998434782028198
1247	≡ƒæì	5	2024-11-11	1	Google Play	negative	0.6970561146736145
1248	This app is not available on all android versions and some times it is not functional.	1	2024-11-08	1	Google Play	negative	0.9997187256813048
1249	senayt Mesfin	4	2024-11-08	1	Google Play	positive	0.8874820470809937
1250	Bad app vety bad.	1	2024-11-07	1	Google Play	negative	0.9998058676719666
1251	Abessnya Banke	5	2024-11-05	1	Google Play	negative	0.9873653054237366
1252	The most useless app, I never expected such an irrelevant app from BOA. big shame!	1	2024-11-04	1	Google Play	negative	0.9997209906578064
1253	Okay	5	2024-11-03	1	Google Play	positive	0.9997709393501282
1254	Professional on banking app	5	2024-11-01	1	Google Play	positive	0.9616296291351318
1255	Has some nice interface but always freezes or slow to load .App developers please fix this issue.	3	2024-10-27	1	Google Play	negative	0.993607759475708
1256	ßèáßï¡ßê░ßê½ßê¥ ßèáßê╡ßë░ßè½ßè¡ßêëßë╡	5	2024-10-26	1	Google Play	negative	0.7850579619407654
1257	Please try another because this app doesn't feet the need of this generation	1	2024-10-25	1	Google Play	negative	0.9962698221206664
1258	Good	4	2024-10-25	1	Google Play	positive	0.999816119670868
1259	Fast transfer	5	2024-10-24	1	Google Play	positive	0.9989985823631288
1260	What's up I can't log in, what's wrong	5	2024-10-22	1	Google Play	negative	0.9989662170410156
1261	Amrumehamed	1	2024-10-21	1	Google Play	positive	0.6924071311950684
1262	Nice to meet you my proud bank in Ethiopia.. I'm a member of this bank, i need to solve my problem of international receiving money for me from my online digital working service's over the world please? I'm working a lot of international money.But i can't get direct in Ethiopia because of don't knowing the legal ways of getting money in Ethiopia please can I get and direct deposit with BoA please ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ?	5	2024-10-18	1	Google Play	positive	0.968373954296112
1263	ßï░ßï░ßîêßèÉßêÉ	5	2024-10-15	1	Google Play	negative	0.6970561146736145
1264	Terrible Bank Experience ItΓÇÖs unbelievable that with all the modern technology, this bank still struggles with even basic transactions. The app constantly crashes, services are limited, and every time I try to transfer money or load Telebirr, thereΓÇÖs a huge delay. I have to wait 5 days for failed transactions to be refunded! Even USSD is unreliable. TheyΓÇÖve put me in embarrassing situations countless times, and customer care never fixes anything. IΓÇÖve switched banks, and you should too!	1	2024-10-14	1	Google Play	negative	0.9995194673538208
1265	A painfully slow banking app service. Please don't make it your choice!	1	2024-10-13	1	Google Play	negative	0.999660849571228
1266	Good App	4	2024-10-12	1	Google Play	positive	0.9998493194580078
1267	Best app to me	5	2024-10-11	1	Google Play	positive	0.997821807861328
1268	BOA	5	2024-10-11	1	Google Play	negative	0.7410509586334229
1269	Abdulkadir	5	2024-10-11	1	Google Play	positive	0.981449544429779
1270	Bad	1	2024-10-10	1	Google Play	negative	0.999782383441925
1271	If it is possible I would gove0 star	1	2024-10-08	1	Google Play	negative	0.9928192496299744
1272	Nise mobile bankig	4	2024-10-05	1	Google Play	negative	0.9858755469322203
1273	Overall good app but performance needs some improvement also sometimes when using instant other bank transfers it refuses causing to be repeated several times to transfer	4	2024-10-04	1	Google Play	negative	0.953279197216034
1274	Ok	5	2024-10-04	1	Google Play	positive	0.9997851252555848
1275	Just make it work please≡ƒñú this is embarrassing for a bank of your size	1	2024-10-04	1	Google Play	negative	0.999284327030182
1276	Update to the simplest way it requires the developer option on and off why this is	5	2024-10-04	1	Google Play	negative	0.998016357421875
1277	Stop telling me what to do with my phone, BOA. Why does your newly updated app keep asking me to disable the developer options? IΓÇÖm not slowing down my phone just to use your God damn app. ≡ƒñ«≡ƒñ«≡ƒñ«≡ƒñ«	1	2024-10-04	1	Google Play	negative	0.9964292645454408
1278	I'm living out of country how may I download and use mobile banking? It asks me the Ethiopia phone number and I can't receive text to confirm because I'm out side the country. So please lete know if I can use while I'm outside the country. Thanks	1	2024-10-04	1	Google Play	negative	0.6597328782081604
1279	Worest app	1	2024-10-03	1	Google Play	negative	0.7789770364761353
1280	The worest app ever	1	2024-10-03	1	Google Play	positive	0.9535900950431824
1281	ßèáßê¬ßìì ßèÉßïì ßëáßê¡ßë▒ßêìßèò	5	2024-10-03	1	Google Play	negative	0.8337247967720032
1282	Wwwerrr	5	2024-10-02	1	Google Play	negative	0.850250780582428
1283	ßîÇßê¢ßêì ßïìßëÇßë▒	5	2024-09-30	1	Google Play	negative	0.7850579619407654
1284	Great For Financial company	5	2024-09-30	1	Google Play	positive	0.9998703002929688
1285	Very easy to use	5	2024-09-30	1	Google Play	positive	0.999142289161682
1286	The App's crash always.. Error.....	3	2024-09-27	1	Google Play	negative	0.9996880292892456
1287	This app is incredibly frustrating to use. ItΓÇÖs filled with issues that make it difficult to navigate and complete tasks efficiently. IΓÇÖve never encountered such a poorly designed banking application before. It needs significant improvements to enhance user experience. It deserves a vey low rating.	1	2024-09-26	1	Google Play	negative	0.998582124710083
1288	Great UI and seamless UX. I love it!!	5	2024-09-25	1	Google Play	positive	0.9998557567596436
1289	That's too good application but try to add more alternatives and futures or possibilitys for your customers	3	2024-09-25	1	Google Play	negative	0.9941336512565612
1290	It's easy used to operate program and secured ≡ƒæì≡ƒæì	4	2024-09-25	1	Google Play	negative	0.9652975797653198
1291	I bought a mobile card on this app but I didn't receive it and it took my money and I didn't get my money back.	1	2024-09-21	1	Google Play	negative	0.9994741082191468
1292	Amazing	5	2024-09-19	1	Google Play	positive	0.999875545501709
1293	Great app with great services	5	2024-09-19	1	Google Play	positive	0.9998226761817932
1294	Yes active user	5	2024-09-17	1	Google Play	positive	0.9983929991722108
1295	Shameful	1	2024-09-17	1	Google Play	negative	0.998016357421875
1296	The worest app ever made i would not recommende for no one	1	2024-09-16	1	Google Play	negative	0.5611279010772705
1297	Good application	5	2024-09-16	1	Google Play	positive	0.999854564666748
1298	I like	5	2024-09-16	1	Google Play	positive	0.9998149275779724
1299	How many hours should I wait after transferring money to telebirr, please do something about the transfer delay issue I need my money when ever.	1	2024-09-15	1	Google Play	negative	0.9988893866539
1300	BOA is unreasonably holding and delaying transactions for more than a day, even transactions within the same bank itself. This is a huge gap that I observed in BOA mobile banking. I didn't experience this kind of challenge while having transactions in other banks' mobile banking platforms. After waiting so long, I called your customer support team and the response they gave me was "it was the system that holds the transaction & will be released on working days". This is not totally fair.	1	2024-09-15	1	Google Play	negative	0.9993953704833984
1301	ßï¿ßèÑßê¡ßê╡ßïÄßèò ßë░ßê₧ßè¡ßê« ßï¡ßîìßêêßî╣ (ßèáßê¢ßê½ßî¡)	5	2024-09-14	1	Google Play	negative	0.8698036074638367
1302	It's not working. It needs a big update. Can't you update the app quickly?	1	2024-09-14	1	Google Play	negative	0.999777853488922
1303	I am Aimohon Joel , It's can be Good for a Better Conversation in Time ≡ƒÖé	3	2024-09-14	1	Google Play	negative	0.9925205707550048
1356	Good job	5	2024-08-07	1	Google Play	positive	0.999835729598999
1304	Better app than most mobile apps, but why do I have to turn off developer option every time I wanna use the app?? It's annoying.	1	2024-09-13	1	Google Play	negative	0.999325394630432
1305	Bes and freindly app	5	2024-09-13	1	Google Play	negative	0.9136509895324708
1306	It doesn't work.	1	2024-09-12	1	Google Play	negative	0.9997761845588684
1307	It say "The request was not successful. please check device connectivity or try again" why? One of the bank manager told me it is because of my phone's android version which is 9.1 It is ridiculous! Disappointing	1	2024-09-11	1	Google Play	negative	0.9997968077659608
1308	How to download or screenshot of payment receipt...what kinda worst app ever ≡ƒñ«≡ƒñ«≡ƒñó	1	2024-09-11	1	Google Play	negative	0.9998114705085754
1309	Smart technology	5	2024-09-10	1	Google Play	positive	0.9998468160629272
1310	Yegema app tish≡ƒ¬¿	1	2024-09-08	1	Google Play	negative	0.9501880407333374
1311	This is not an appropriate app, i don't know how boa develops this app, i don't expect this much crazy and un confortable app form BOA, I'm soory!!!	1	2024-09-07	1	Google Play	negative	0.9996864795684814
1312	Shockingly bad! Even when it decides to work, it's painfully slow and frustrating. Such a shame that it has become a stain on an extraordinary bank	1	2024-09-06	1	Google Play	negative	0.9997275471687316
1313	It crashes frequently. It launches on Android 8.1 but I don't think it actually works on versions less than 10. If so, it shouldn't be available for download by such devices to begin with, like many other finance apps are not. It was so much better three months ago, upgrades should be for the better.	1	2024-09-06	1	Google Play	negative	0.999210000038147
1314	Awesome application. But lately its crashing everytime i opened it.	4	2024-09-05	1	Google Play	negative	0.9127691984176636
1315	ßèÑßîàßê¥ ßëáßîúßê¥ ßï░ßè½ßê¢ ßèáßìò ßèÉßïì ßê▓ßìêßêìßîì ßï¡ßè¿ßììßë│ßêì ßê▓ßìêßêìßîì ßèáßï¡ßè¿ßììßë╡ßê¥ ßè¿ßèáßïïßê╜ ßèÑßèô ßèòßîìßï╡ ßëúßèòßè¡ ßï¿ßêÿßê│ßê░ßêë ßëúßèòßè«ßë╜ ßê▓ßïêßï│ßï░ßê¡ ßê₧ßëúßï¡ßêì ßëúßèòßè¬ßèòßîì App ßèÑßîàßîì ßï¿ßêÜßï½ßëáßê│ßî¡ ßèÉßïì ßêêßïìßîÑ ßï½ßê╡ßìêßêìßîïßë╜ßèïßêì	1	2024-09-05	1	Google Play	negative	0.9639249444007874
1316	Fast one	3	2024-09-04	1	Google Play	positive	0.9994491934776306
1317	Nice looking app but a terrible user experience.	1	2024-09-03	1	Google Play	negative	0.9958102703094482
1318	The worest MB app ever!!≡ƒÖä	1	2024-09-02	1	Google Play	negative	0.8734641075134277
1319	It is ok	5	2024-09-01	1	Google Play	positive	0.9998496770858764
1320	Plz fix the Apps ....screenshot lovation hide from glarey share botten not work≡ƒÿö≡ƒÿö	1	2024-08-30	1	Google Play	negative	0.9987314343452454
1321	Apollo's	1	2024-08-29	1	Google Play	positive	0.9974138736724854
1322	The worst experience ever	1	2024-08-29	1	Google Play	negative	0.999792754650116
1323	Hussenaliumar	5	2024-08-29	1	Google Play	negative	0.6654510498046875
1324	Hi I have problem with this App BOA mobile I don't know what is wrong with this App I did many times download but it's sam doesn't work if sam like that this app way I have to be customer with them how I know my account and checking save The book is no Not enough alone	1	2024-08-28	1	Google Play	negative	0.999367892742157
1325	It is not work for my device	5	2024-08-27	1	Google Play	negative	0.9997636675834656
1326	I'm Sick and tiered of enabling and disabling Developer Option Everytime I use this app. maybe you know it maybe you dont, fix it please it's anoying	1	2024-08-26	1	Google Play	negative	0.9990233182907104
1327	The worst app ever	1	2024-08-26	1	Google Play	negative	0.9997934699058532
1328	Betanya Gebre	3	2024-08-23	1	Google Play	positive	0.8911888003349304
1329	I dont recommand it to any one	1	2024-08-23	1	Google Play	negative	0.9855505228042604
1330	Excellent app	5	2024-08-21	1	Google Play	positive	0.9998356103897096
1331	The application used to work well. But after updates I'm not able to use the forgot password feature, which is blocking me from accessing it as a whole.	1	2024-08-20	1	Google Play	negative	0.9988825917243958
1332	ßë╡ßê¡ßêâßê╡	5	2024-08-19	1	Google Play	negative	0.6970561146736145
1333	Gio	4	2024-08-19	1	Google Play	positive	0.9969680905342102
1334	App isn't working	1	2024-08-18	1	Google Play	negative	0.9995692372322084
1335	so far good but always it lugs	3	2024-08-17	1	Google Play	negative	0.982947051525116
1336	Don't trust this bank and its service.	1	2024-08-16	1	Google Play	negative	0.99963116645813
1337	I can not open and use the application,please help me!	5	2024-08-15	1	Google Play	negative	0.9995014667510986
1338	Horrible	1	2024-08-14	1	Google Play	negative	0.9997841715812684
1339	Mostly not working ≡ƒÿæ	1	2024-08-14	1	Google Play	negative	0.999582588672638
1340	Awesome ≡ƒæî	5	2024-08-12	1	Google Play	positive	0.9998607635498048
1341	Despite the enhanced technology you have, the application doesn't work properly, and it asks for the developer option to be turned off, fix that.	3	2024-08-12	1	Google Play	negative	0.9997915625572203
1342	Thank you	3	2024-08-12	1	Google Play	positive	0.9998352527618408
1343	Very poor app b/c highly slow to open the app	1	2024-08-12	1	Google Play	negative	0.9998080134391784
1344	best	1	2024-08-12	1	Google Play	positive	0.9997941851615906
1345	Wedi Tekle .	5	2024-08-11	1	Google Play	negative	0.8421279191970825
1346	Bad app≡ƒô▒≡ƒæÄ≡ƒæÄ≡ƒæÄ	1	2024-08-11	1	Google Play	negative	0.9997676014900208
1347	Dura nan fayyadaman ture amma garuu naaf hojjechaa hin jiru maaf?	5	2024-08-11	1	Google Play	negative	0.9956488013267516
1348	Nice appp	5	2024-08-11	1	Google Play	positive	0.9997910857200624
1349	ßê░ßêïßê¥ ßèáßëóßê▓ßèÆßï½ßïÄßë╜ ßï¿ßê₧ßëúßï¡ßêì ßëúßèòßè¬ßèòßîïßë╜ßêü ßë░ßîáßëâßêÜ ßèÉßè¥ ßèáßîêßêìßîìßêÄßë▒ßèò ßê╡ßêïßê╡ßîÇßêÿßê½ßë╜ßêüßêêßèò ßèÑßèôßêÿßê░ßîìßèôßêêßèòßìó ßèÉßîêßê¡ ßîìßèò ßèáßêêßìÄ ßèáßêìßìÄ ßï¿ßèÉßëáßê¿ßïì ßï¿ßê¢ßê╡ßìêßèòßîáßê¬ßï½ßïì ßëáßèáßîìßëúßëí ßèáßêêßêÿßê╡ßê½ßë╡ ßèáßêìßìÄ ßèáßêìßìÄ ßïêßï░ßêÿßê╡ßê½ßë╡ ßë░ßëÇßï¡ßê»ßêì ßï╡ßê« ßèÑßèòßï░ßèÉßëáßê½ßë╜ßêü ßèÑßèôßïìßëâßêêßèò ßïÿßèòßï╡ßê«ßê¥ ßëÑßë╡ßèûßê⌐ßêìßèò ßèÑßèòßêÿßê¡ßîúßêêßèò *ßè¿ßïÿßêÿßèò ßèáßèòßîëßï░ßêì*	3	2024-08-10	1	Google Play	negative	0.952187478542328
1350	Gooood app my dear	5	2024-08-10	1	Google Play	negative	0.900593638420105
1351	Harun tamam galanaa	3	2024-08-09	1	Google Play	negative	0.9410601258277892
1352	A total disaster of an app. Always offline, never works, it's embarassing. I've lost hope and taken my business to a competitor	1	2024-08-08	1	Google Play	negative	0.9998038411140442
1353	Gamebela	1	2024-08-08	1	Google Play	positive	0.8994190692901611
1354	so poor app to use can't start up when open the app	1	2024-08-08	1	Google Play	negative	0.999744474887848
1355	This app takes too long time to be opened. And even it is not working simply as other banks application. Why this app does not give a digital invoice. Even, I am not able to find where the screeshot is kept after transaction. So, please the developer should fix all these.	1	2024-08-07	1	Google Play	negative	0.9987001419067384
1357	Worst app ever, not user friendly, even doesn't serve basic functionality correctly, takes to much time to login and navigate through the app, we expected more from this bank	1	2024-08-07	1	Google Play	negative	0.9998094439506532
1358	good	3	2024-08-07	1	Google Play	positive	0.999816119670868
1359	Bad app .	1	2024-08-06	1	Google Play	negative	0.9997915625572203
1360	I mean how could a big financial company like this, be this much irresponsible to release this app? You should be ashamed!	1	2024-08-06	1	Google Play	negative	0.9994394183158876
1361	Review	5	2024-08-06	1	Google Play	positive	0.9946893453598022
1362	Goood	4	2024-08-06	1	Google Play	negative	0.9943867921829224
1363	≡ƒæÄ≡ƒæÄ≡ƒæÄ≡ƒæÄ≡ƒæÄ≡ƒæÄ≡ƒæÄ≡ƒæÄ≡ƒæÄ	1	2024-08-06	1	Google Play	negative	0.6970561146736145
1364	Is it necessary to switch off developer options every time to use mobile banking?≡ƒñö≡ƒñö≡ƒÿí≡ƒÿí≡ƒÿí	1	2024-08-04	1	Google Play	negative	0.99793541431427
1365	The previous version is better it doesn't work	1	2024-08-04	1	Google Play	negative	0.9997755885124208
1366	I don't know what is wrong with BOA as a bank in general. It's been going backwards since last year or so. The app is a disaster to use in every possible way. Not stable to log in and very slow to perform transactions, couldn't take a screenshot (or can't even find the pictures even using its save screenshot option). Most of the time, it fails to perform transactions and so on. Simply, it's the worst!	1	2024-08-03	1	Google Play	negative	0.9998201727867126
1367	ok	5	2024-08-03	1	Google Play	positive	0.9997851252555848
1368	Take some note from CBE mobile banking app, it's the best banking app currently take some note and improve ur app . Sometimes u have to learn from the bests ≡ƒÖî	1	2024-08-03	1	Google Play	positive	0.9958856701850892
1369	It's a useless app	1	2024-08-02	1	Google Play	negative	0.9998058676719666
1370	It's not working as it was , so much need to improve, it was the best but not anymore	2	2024-08-01	1	Google Play	negative	0.9968530535697936
1371	Poor network	1	2024-08-01	1	Google Play	negative	0.9997891783714294
1372	Not yet completely working this App. i don't know when is it will be working properly! Its Sad!!!	1	2024-07-31	1	Google Play	negative	0.9993754029273988
1373	The app does not open sometimes it says coonection issue which i dont have and after it opens it has bugs while using its not smooth to work with please improve it	1	2024-07-31	1	Google Play	negative	0.9953023195266724
1374	It's not working totally, what a useless app is it,	1	2024-07-31	1	Google Play	negative	0.999817192554474
1375	This app has become the most troubling every day. It doesn't work. I love the bank, and I hate the app	1	2024-07-31	1	Google Play	negative	0.9989368319511414
1376	this is so disappointing app ≡ƒÿ₧	1	2024-07-31	1	Google Play	negative	0.9998024106025696
1377	ßèáßëóßê╡ßèÆßï½ ßï¿ßêüßêëßê¥ ßê¥ßê¡ßî½	5	2024-07-29	1	Google Play	negative	0.8337247967720032
1378	Nays	5	2024-07-28	1	Google Play	negative	0.9894011616706848
1379	The worst app	1	2024-07-28	1	Google Play	negative	0.9997969269752502
1380	it can't even open and only display error messages	1	2024-07-27	1	Google Play	negative	0.9993472695350648
1381	not active	1	2024-07-27	1	Google Play	negative	0.999765932559967
1382	To get good quality	5	2024-07-27	1	Google Play	positive	0.999868392944336
1383	ßèáßï¡ßê░ßê½ßê¥ ßèÑßè« ßê¥ßèòßï╡ßèò ßèÉßïì ßë╜ßîìßê⌐?	1	2024-07-26	1	Google Play	negative	0.9647620320320128
1384	uselss app dont download	1	2024-07-26	1	Google Play	negative	0.9977203011512756
1385	Is this app fake i try it not working it say please try again later, unable to make transactions what is the purpose of this app . If it is not working delete it	1	2024-07-25	1	Google Play	negative	0.9997162222862244
1386	This app didn't work. They have a new version (new app) but still not compatible with my Samsung S8+ , which is v.funny.	1	2024-07-25	1	Google Play	negative	0.9991223216056824
1387	Corrupted and poor app	1	2024-07-24	1	Google Play	negative	0.9997439980506896
1388	Good	1	2024-07-24	1	Google Play	positive	0.999816119670868
1389	When I try to use the application it says 'developer setting should be off' where is the setting to off this play Still doesn't work for me	3	2024-07-24	1	Google Play	negative	0.999801218509674
1390	FIX YOUR Apollo!! You guys where the best ≡ƒæî	1	2024-07-23	1	Google Play	positive	0.999450385570526
1391	Always slow and doesn't work on weekends if you are in a rush or a merchant this app is not for you	1	2024-07-23	1	Google Play	negative	0.9994396567344666
1392	It's very difficult to use the user, app,ones dawenload the user can't operate well , no one can help me,	1	2024-07-23	1	Google Play	negative	0.9997815489768982
1393	Poor application. It turned off by itself	1	2024-07-23	1	Google Play	negative	0.999744474887848
1394	Allowed	5	2024-07-23	1	Google Play	positive	0.9978752136230468
1395	It usually crashes and the reason it gives is a problem on internet connection although the internet was fine.	1	2024-07-23	1	Google Play	negative	0.9991043210029602
1396	we want international mobile banking	1	2024-07-22	1	Google Play	positive	0.9587844014167786
1397	screenshot isn't working, Please modify it	2	2024-07-22	1	Google Play	negative	0.9996084570884703
1398	Naziriet measho 89160437	1	2024-07-22	1	Google Play	negative	0.9862651228904724
1399	Ahmed Mohammed husen	3	2024-07-21	1	Google Play	positive	0.912415325641632
1400	Is not working both this one and apollo did u make it better pls am gonne stop using this bank because of the mobile banking	1	2024-07-19	1	Google Play	negative	0.9996222257614136
1401	I have experiance	5	2024-07-19	1	Google Play	negative	0.8070281147956848
1402	The App is not working on Android 9.1 at all. It shows an error notification and forcefully closes the app. Must be fixed ASAP.	1	2024-07-19	1	Google Play	negative	0.9997739195823668
1403	Wow	5	2024-07-19	1	Google Play	positive	0.999592125415802
1404	Crashes very frequently is not stable overall need improvement such a huge bank needs a better app than the current one	1	2024-07-19	1	Google Play	negative	0.999760091304779
1405	ßê¡ßï¡ßê¡ßìì	3	2024-07-19	1	Google Play	negative	0.6970561146736145
1406	The previous application is much better than this one	1	2024-07-18	1	Google Play	positive	0.9991149306297302
1407	Worst app. It is wise to invest money and you can make it like CBE app. Even the incon has no image. My app has better UI than yours. So, please invest more and hire professional developer companies and improve it.	1	2024-07-18	1	Google Play	negative	0.9994294047355652
1408	mal	5	2024-07-16	1	Google Play	negative	0.9996137022972108
1409	It is not working at all	1	2024-07-16	1	Google Play	negative	0.9997811913490297
1410	Excellent	5	2024-07-16	1	Google Play	positive	0.9998434782028198
1411	The poorest mobile banking survice ever. Only error reports frequently	1	2024-07-16	1	Google Play	negative	0.999705970287323
1412	≡ƒÿ₧≡ƒÿ₧≡ƒÿ₧≡ƒÿ₧	1	2024-07-16	1	Google Play	negative	0.6970561146736145
1413	"Why donΓÇÖt your ATMs support account-to-account transfers like other countries( Kenya, Nigeria , South africa)"	4	2025-06-06	2	Google Play	negative	0.9964652061462402
1414	what is this app problem???	1	2025-06-05	2	Google Play	negative	0.9996225833892822
1415	the app is proactive and a good connections.	5	2025-06-05	2	Google Play	positive	0.9998679161071776
1416	I cannot send to cbebirr app. through this app.	3	2025-06-05	2	Google Play	negative	0.9953354001045228
1417	good	4	2025-06-05	2	Google Play	positive	0.999816119670868
1418	not functional	1	2025-06-05	2	Google Play	negative	0.999778687953949
1419	everytime you uninstall the app you have to reach them out physically. very oldy! if that's one of security layer, they'd check for fraud attempt via app source directly(source:- app store, play store ... etc) implicitly ! we are in 2025, physical presence for every app install is traditional(traditionally very rare).	1	2025-06-04	2	Google Play	negative	0.9905161261558532
1420	ßèáßè½ßïìßèòßë╡ ßï¿ßê¥ßèôßê╡ßîêßëúßëáßë╡ ßëªßë│ ßê╡ßê¥ ßî╜ßìêßèò ßèÉßïì ßè¿ßïÜßêà ßëáßìèßë╡ ßï¿ßêïßè¡ßèòßëúßë╕ßïìßèò ßèáßè½ßïëßèòßë╢ßë╜ ßï¿ßê¥ßèòßìêßêìßîêßïë ßèÉßîêßê¡ ßîìßèò ßèáßï▓ßê╡ ßèáßè½ßïìßèòßë╢ßë╜ mr ßëÑßêêßïë ßï¿ßêÜßîÇßê¥ßê⌐ ßëáßï¥ßë░ßïïßêì ßîìßèò ßèáßìòßêìßè¼ßê╜ßèæ space ßê╡ßèòßî╜ßìì ßèáßï¡ßëÇßëáßêìßê¥ ßëóßê╡ßë░ßè½ßè¿ßêì	4	2025-06-04	2	Google Play	negative	0.9616846442222596
1421	best	5	2025-06-04	2	Google Play	positive	0.9997941851615906
1422	bezabih	5	2025-06-04	2	Google Play	positive	0.965407371520996
1423	Best Mobile Banking app ever	5	2025-06-04	2	Google Play	positive	0.9997294545173644
1424	good	5	2025-06-04	2	Google Play	positive	0.999816119670868
1425	it was good app but it have some issues like it doesnt give me the right amount that I have in the bank and have some issues in transferring	2	2025-06-04	2	Google Play	negative	0.998119294643402
1426	Good	5	2025-06-04	2	Google Play	positive	0.999816119670868
1427	≡ƒæî≡ƒæì	5	2025-06-04	2	Google Play	negative	0.6970561146736145
1428	very niec	5	2025-06-04	2	Google Play	positive	0.5192647576332092
1429	best app of finance	5	2025-06-04	2	Google Play	positive	0.9996503591537476
1430	yetemeta	1	2025-06-03	2	Google Play	positive	0.655366837978363
1431	Engida Kebede Fetera	5	2025-06-03	2	Google Play	negative	0.8396734595298767
1432	it is not safety	1	2025-06-03	2	Google Play	negative	0.9997867941856384
1433	NICE bank	5	2025-06-03	2	Google Play	positive	0.999805510044098
1434	it is like a childish app make it better the worst I have ever seen	1	2025-06-02	2	Google Play	negative	0.9997958540916444
1435	It's a problem solver application, go ahead CBE, I love so much.	5	2025-06-02	2	Google Play	positive	0.9997678399086
1436	It's good but try to make it facilitate for your client	4	2025-06-02	2	Google Play	positive	0.9491761326789856
1437	best app	5	2025-06-01	2	Google Play	positive	0.999686598777771
1438	Awesome bank	5	2025-06-01	2	Google Play	positive	0.99984610080719
1439	this app has developed in a very good ways but there are some comments I need to make 1- preventing the screenshot likely not good for someone like me coz I need to make screenshot for quicker evidence. 2-it would be good if you make us to access recent transaction histories for 30 days coz we don't have to go to the Bank's in person to see old transactions or add colander category so user can easily access old transactions through colanders.	5	2025-05-31	2	Google Play	negative	0.9983141422271729
1440	Masha alla	5	2025-05-31	2	Google Play	negative	0.9514628052711488
1441	Recently there is big problem when sending to safaricom, telebir, and even to cbebirr wallet could anybody who is responsible fix it, it's very frustrating it's been 5 days and my money hasn't been returned it takes it out of my account but doesn't send it to my mpesa update- they have just corrected it and sent me back the money but still I'm afraid now to send again	2	2025-05-31	2	Google Play	negative	0.9991102814674376
1442	better service	5	2025-05-31	2	Google Play	positive	0.9982219338417052
1443	it,s good app and time manager ≡ƒæì	5	2025-05-30	2	Google Play	positive	0.999837040901184
1444	malkaamuu Jiidhaa Namoo	5	2025-05-30	2	Google Play	negative	0.9887813329696656
1445	lower system everything	3	2025-05-30	2	Google Play	negative	0.9993475079536438
1446	Nice!	5	2025-05-30	2	Google Play	positive	0.999863862991333
1447	Keep it up My CBE	5	2025-05-29	2	Google Play	positive	0.9996104836463928
1448	yes good	5	2025-05-28	2	Google Play	positive	0.9998410940170288
1449	I was using this app for the last two years with no problems. It stopped working about 3 months ago. when I tried to transfer funds it gives me error "can't do this transaction. inactive account."	4	2025-05-27	2	Google Play	negative	0.9996353387832642
1450	i like everything of this app	5	2025-05-27	2	Google Play	positive	0.9996908903121948
1451	≡ƒñ¼≡ƒñ¼≡ƒñ¼≡ƒñ¼ network ≡ƒ¢£	1	2025-05-26	2	Google Play	negative	0.6856114864349365
1452	Best	5	2025-05-26	2	Google Play	positive	0.9997941851615906
1453	CBE is the best financial application and and very dimple to use. I would like to say thank you so much for the developer of application. I really appreciate this app.	5	2025-05-26	2	Google Play	positive	0.9982792139053344
1454	nice	5	2025-05-26	2	Google Play	positive	0.9998552799224854
1455	good job	5	2025-05-26	2	Google Play	positive	0.999835729598999
1456	it's awesome!!	5	2025-05-25	2	Google Play	positive	0.999871015548706
1457	thankyou every one	5	2025-05-25	2	Google Play	positive	0.99984610080719
1458	Ronaldo ≡ƒç╡≡ƒç╣ ≡ƒÑç	5	2025-05-25	2	Google Play	positive	0.994828760623932
1459	this app is absolutely fantastic I love it and I enjoying to it ,let us support this foundation together .	5	2025-05-25	2	Google Play	positive	0.9998852014541626
1460	The CBE app has been highly unreliable in recent weeks. It frequently fails to work properly on both Ethio Telecom and Safaricom networks, whether using Wi-Fi or mobile data. This week, the system was down entirely for extended periods, making it very difficult to access banking services. The app only functions intermittently, and the lack of consistency is frustrating. I hope the issues are addressed soon, and that any non-technical influences are removed from such essential services.	2	2025-05-25	2	Google Play	negative	0.9997394680976868
1461	mortuary app	5	2025-05-25	2	Google Play	negative	0.7924908995628357
1462	it is smart app but it has stoped after some period of time on my device with out any reason .	5	2025-05-25	2	Google Play	negative	0.9961044788360596
1463	amazing app I am used this app for one year	4	2025-05-24	2	Google Play	positive	0.9991408586502076
1464	≡ƒæì	5	2025-05-24	2	Google Play	negative	0.6970561146736145
1465	good app	5	2025-05-24	2	Google Play	positive	0.9998493194580078
1466	i love it ≡ƒÿì≡ƒÿÿ	5	2025-05-24	2	Google Play	positive	0.9998791217803956
1467	It makes life easy!≡ƒæî	5	2025-05-24	2	Google Play	positive	0.9993600249290466
1468	its not fast	1	2025-05-24	2	Google Play	negative	0.9949808716773988
1469	wow	4	2025-05-24	2	Google Play	positive	0.999592125415802
1470	it is sooo good	5	2025-05-24	2	Google Play	positive	0.9998735189437866
1471	excellent	5	2025-05-24	2	Google Play	positive	0.9998434782028198
1472	ok	1	2025-05-24	2	Google Play	positive	0.9997851252555848
1473	Fantastic	5	2025-05-23	2	Google Play	positive	0.9998743534088136
1474	accessible to using	5	2025-05-23	2	Google Play	positive	0.999116837978363
1475	I like it	4	2025-05-23	2	Google Play	positive	0.99985933303833
1476	why you change default network?	5	2025-05-23	2	Google Play	negative	0.9962357878684998
1477	very nice ≡ƒæì	5	2025-05-23	2	Google Play	positive	0.999857783317566
1478	nice fast app	5	2025-05-23	2	Google Play	positive	0.999833345413208
1479	how to I get my money	5	2025-05-23	2	Google Play	negative	0.9934091567993164
1480	Very bad, can't even load they need to improve their services.	1	2025-05-22	2	Google Play	negative	0.999816596508026
1481	Very good app, but please make it reliable . it crashes sometimes .	4	2025-05-22	2	Google Play	positive	0.9649856686592102
1482	very busy I don't know why... I prefer 889	3	2025-05-22	2	Google Play	negative	0.9991938471794128
1483	Sometimes it has a nasty lag for several hour fix that , the rest is ≡ƒæî	4	2025-05-22	2	Google Play	negative	0.9966771602630616
1484	the most boring Mobil banking application in ethiopia.Please use alternative private banks mobile banking apps	1	2025-05-22	2	Google Play	negative	0.9986202716827391
1485	hojii bonsaadha	5	2025-05-22	2	Google Play	positive	0.9568660259246826
1486	ok	5	2025-05-22	2	Google Play	positive	0.9997851252555848
1487	user-friendly apps.because this app is easy.	5	2025-05-22	2	Google Play	positive	0.9554508328437804
1488	Awosome!!!	5	2025-05-22	2	Google Play	positive	0.6944942474365234
1489	Very good app,	5	2025-05-22	2	Google Play	positive	0.9998691082000732
1490	sync problem may 22 2025 but the date stack on may 8 2025 help pls	5	2025-05-22	2	Google Play	negative	0.992516815662384
1491	ßï¡ßêà ßêÿßë░ßîìßëáßê¬ßï½ ßëáßîúßê¥ ßîÑßê⌐ ßèÉßïì. this app is very nice	5	2025-05-22	2	Google Play	positive	0.9997020363807678
1492	I hate this app ≡ƒÿÆ	1	2025-05-22	2	Google Play	negative	0.9996378421783448
1493	trustful	5	2025-05-22	2	Google Play	positive	0.9998213648796082
1494	I like	5	2025-05-22	2	Google Play	positive	0.9998149275779724
1495	update issue	4	2025-05-22	2	Google Play	positive	0.5473281145095825
1496	its not working over safari network	1	2025-05-22	2	Google Play	negative	0.9991377592086792
1497	oldie	1	2025-05-22	2	Google Play	negative	0.6663179397583008
1498	it doesn't work	1	2025-05-21	2	Google Play	negative	0.9997813105583192
1499	This app is good, and we are using it well	1	2025-05-21	2	Google Play	positive	0.999855637550354
1500	very nice ≡ƒæî app for android phone	5	2025-05-21	2	Google Play	positive	0.9994401335716248
1501	Yes Yes	5	2025-05-21	2	Google Play	positive	0.9997482895851136
1502	ßëáßîúßê¥ ßè¿ßê¡ßìïßìï	1	2025-05-21	2	Google Play	negative	0.7850579619407654
1503	easy to use helpful in my life	5	2025-05-21	2	Google Play	positive	0.9981144666671752
1504	good ≡ƒæì	4	2025-05-21	2	Google Play	positive	0.9998576641082764
1505	the best mobile banking app	5	2025-05-21	2	Google Play	positive	0.9998278617858888
1506	this app is very useful app,it saves time,and it is secure	4	2025-05-21	2	Google Play	positive	0.9992597699165344
1507	ok	2	2025-05-21	2	Google Play	positive	0.9997851252555848
1508	it's a good application ≡ƒæì	5	2025-05-21	2	Google Play	positive	0.9998123049736024
1509	the screenshot and the reffresh options are so annoying that makes transaction so delaying activity !	2	2025-05-21	2	Google Play	negative	0.9997513890266418
1510	poor service	1	2025-05-21	2	Google Play	negative	0.999653458595276
1511	amazing	5	2025-05-20	2	Google Play	positive	0.999875545501709
1512	it is reliable and easy to use.	5	2025-05-20	2	Google Play	positive	0.9998389482498168
1513	the most annoying mobile banking app I've ever seen	1	2025-05-20	2	Google Play	negative	0.9994208812713624
1514	Cbe mobile banking	5	2025-05-20	2	Google Play	positive	0.8304276466369629
1515	i can't make Screenshout in this app, please made modification	5	2025-05-20	2	Google Play	negative	0.9966920614242554
1516	Best app I loved it	5	2025-05-19	2	Google Play	positive	0.999849796295166
1517	nice app	5	2025-05-19	2	Google Play	positive	0.9998061060905457
1518	wow	5	2025-05-18	2	Google Play	positive	0.999592125415802
1519	Amazing applicatiom sometimes doesnt work!	5	2025-05-18	2	Google Play	negative	0.6448807716369629
1520	well satisfied with this beautiful app	5	2025-05-18	2	Google Play	positive	0.999858856201172
1521	very good	4	2025-05-17	2	Google Play	positive	0.9998520612716676
1522	best app.	5	2025-05-17	2	Google Play	positive	0.999774158000946
1523	not working,why???	5	2025-05-17	2	Google Play	negative	0.9995881915092468
1524	Great impact but why Developer option turnoff if you fix ≡ƒÖÅ ≡ƒÖÅ ≡ƒÖÅ	5	2025-05-17	2	Google Play	negative	0.9841781258583068
1525	always disappointing ! especially the iOS one !! some similar local applications are extremely superior to this application!! Really disappointing!	1	2025-05-17	2	Google Play	negative	0.9996201992034912
1526	woxe harimo ribiso	5	2025-05-17	2	Google Play	negative	0.9374374151229858
1527	Good ,easy to use	5	2025-05-16	2	Google Play	positive	0.9998592138290404
1528	Good app	5	2025-05-15	2	Google Play	positive	0.9998493194580078
1529	Good job≡ƒæì	5	2025-05-14	2	Google Play	positive	0.9998576641082764
1530	Please kindly ask to update the app and allow us to screenshot, it's convenient and efficient as long as you add security to the access there is no reason to block us from screenshooting our screen.	2	2025-05-14	2	Google Play	positive	0.993906795978546
1531	I have using the CBE mobile banking app. and overall i appreciate its Feuteres However i.ve Notticed that when i turn on the Developer options on my divice the App.Stop Functioning prorerly It.Would Be Great If You could look into This issue as l often need to access Developer setting for Otter Application ThankYou For Your attention to This Matter	4	2025-05-13	2	Google Play	negative	0.9474117159843444
1532	customer service is bad nothing is good about this bank	1	2025-05-13	2	Google Play	negative	0.9996613264083862
1533	It is Amazing Mobile Banking App....But why the screenshot of the receipt doesnt work	5	2025-05-13	2	Google Play	negative	0.992915153503418
1534	fast and simple easy to use ≡ƒæî	5	2025-05-12	2	Google Play	positive	0.998494267463684
1535	The fastest transferring app I ever had its so reliable	5	2025-05-11	2	Google Play	positive	0.9844427704811096
1536	Funds transferred from the same bank do not reflect in the account, even though a confirmation text message was received.	3	2025-05-11	2	Google Play	negative	0.9986681938171388
1537	it's easy and fast	5	2025-05-10	2	Google Play	positive	0.9995684027671814
1538	This app don't have self activation only you have to look near cbe branch that's disgusting	1	2025-05-10	2	Google Play	negative	0.9960438013076782
1539	hello dearest CBE office personnel make some benefits for those using interest free accounts thanks for your help	5	2025-05-09	2	Google Play	positive	0.999572217464447
1540	wow best application ever	5	2025-05-09	2	Google Play	positive	0.9997984766960144
1541	Am sorry but what does developer mode do to the application ? hack it ? are you sure you are developer or are you stupid, doesnt makes sense,	1	2025-05-08	2	Google Play	negative	0.9997019171714784
1542	Best	4	2025-05-08	2	Google Play	positive	0.9997941851615906
1543	the pride of Ethiopian bank ≡ƒÅª	5	2025-05-08	2	Google Play	positive	0.999118983745575
1544	why the app telling me to turn of developer options please fix it.	1	2025-05-07	2	Google Play	negative	0.9990994930267334
1545	i am very happy . i have small prob. after i transfer i cant put the transfer cashe bil to my dic.	5	2025-05-07	2	Google Play	positive	0.9976927042007446
1546	good	3	2025-05-06	2	Google Play	positive	0.999816119670868
1547	amazing apps	5	2025-05-06	2	Google Play	positive	0.9998716115951538
1548	All service of Mobile Banking	5	2025-05-06	2	Google Play	positive	0.8924255967140198
1549	needs improvement	1	2025-05-06	2	Google Play	negative	0.9966731071472168
1550	i miss the old one i couldn't send my mony to other bank..	1	2025-05-06	2	Google Play	negative	0.995843231678009
1551	the app is recently crushing each time you open and try to make transfers...it used to be good. take lessons from the Dashen Super app or ethiotelecom. it is not befitting of your experience and glory. inv3st in making it more friendly and convenient. I am considering leaving CBE for good.	2	2025-05-06	2	Google Play	negative	0.9984410405158995
1552	good but these week not oky	4	2025-05-06	2	Google Play	negative	0.955415666103363
1553	well designed! Fixing bugs & two step verification with biometric... simply it's great!	5	2025-05-06	2	Google Play	positive	0.99980491399765
1554	If any developer is reading this please fix the screenshot functionality or at least the download button should work flawlessly without me touching it twenty times.	1	2025-05-05	2	Google Play	negative	0.9975224137306212
1555	it's a great job.but one more thing, it hasn't been placed for transfer to other banks on face like mobile charge card place	5	2025-05-05	2	Google Play	positive	0.8991115093231201
1556	CBE mobilr bankg	5	2025-05-05	2	Google Play	positive	0.8703048229217529
1557	wow	1	2025-05-05	2	Google Play	positive	0.999592125415802
1558	verygood	3	2025-05-05	2	Google Play	positive	0.9988996982574464
1559	┘à┘à╪¬╪º╪▓ ╪¼╪»╪º	5	2025-05-04	2	Google Play	negative	0.8031753301620483
1560	it's very low quality application	1	2025-05-04	2	Google Play	negative	0.9996594190597534
1561	Very Amazing Apps	5	2025-05-04	2	Google Play	positive	0.9998774528503418
1562	ßèáßï¢	1	2025-05-04	2	Google Play	negative	0.6970561146736145
1563	wow simple life	5	2025-05-04	2	Google Play	positive	0.9997076392173768
1564	it's nice	5	2025-05-03	2	Google Play	positive	0.9998672008514404
1565	Why stacked sometimes	5	2025-05-03	2	Google Play	negative	0.994105100631714
1566	okay ≡ƒæì but sometimes busy	1	2025-05-03	2	Google Play	negative	0.8515547513961792
1567	the worst commercial company that fails to do even the most normal things again and and again.	1	2025-05-03	2	Google Play	negative	0.9997990727424622
1568	Very good app. but disappointed by general cessation of system.	5	2025-05-02	2	Google Play	negative	0.998118817806244
1569	Good and fast	5	2025-05-02	2	Google Play	positive	0.9998561143875122
1570	Unreliable!	1	2025-05-02	2	Google Play	negative	0.9997379183769226
1571	Best the best fast	5	2025-05-02	2	Google Play	positive	0.9998427629470824
1572	happy	5	2025-05-02	2	Google Play	positive	0.99987530708313
1573	fast and reliable	5	2025-05-02	2	Google Play	positive	0.9998595714569092
1574	network errorrrrrr	2	2025-05-02	2	Google Play	negative	0.9978076815605164
1575	Best app but there is some problem I can't send money to telebirr or mpesa so if you can add that it could be use full	4	2025-05-02	2	Google Play	negative	0.9982808828353882
1576	its good and simple to use	5	2025-05-02	2	Google Play	positive	0.9998610019683838
1577	worest app like that bank for security and network access	1	2025-05-02	2	Google Play	negative	0.9927296042442322
1578	it's the best app i	5	2025-05-02	2	Google Play	positive	0.999834418296814
1579	not bad not good	1	2025-05-02	2	Google Play	negative	0.9715349674224854
1580	its very nice	5	2025-05-02	2	Google Play	positive	0.9998526573181152
1581	do not work this week	3	2025-04-30	2	Google Play	negative	0.99776029586792
1582	It crashes frequently	4	2025-04-30	2	Google Play	negative	0.9993256330490112
1583	the best	5	2025-04-28	2	Google Play	positive	0.9998332262039183
1584	I can simply describe this app as "Making all your work easier".	5	2025-04-28	2	Google Play	positive	0.8382560610771179
1585	goid	5	2025-04-28	2	Google Play	negative	0.7086988091468811
1586	best appearance	5	2025-04-27	2	Google Play	positive	0.9996986389160156
1587	it's very good ≡ƒæì app	5	2025-04-27	2	Google Play	positive	0.999859094619751
1588	I need support you	5	2025-04-27	2	Google Play	negative	0.9881442785263062
1589	the worst Mobile banking i have ever seen in my life	1	2025-04-26	2	Google Play	negative	0.9997807145118712
1590	super	5	2025-04-26	2	Google Play	positive	0.998783528804779
1591	ßîáßîÇßî¿ßîêßîÇßìóßîÇßîê	5	2025-04-26	2	Google Play	negative	0.8337247967720032
1592	i like the app	5	2025-04-26	2	Google Play	positive	0.9994398951530457
1593	the Best	1	2025-04-26	2	Google Play	positive	0.9998332262039183
1594	to other bank is bad	1	2025-04-25	2	Google Play	negative	0.9997149109840392
1595	tank's	5	2025-04-25	2	Google Play	negative	0.9855976700782776
1596	its good but add more features such like. bank statement showing	5	2025-04-24	2	Google Play	positive	0.9881664514541626
1597	it is so nice	5	2025-04-24	2	Google Play	positive	0.9998714923858644
1598	Very Good≡ƒæì	5	2025-04-21	2	Google Play	positive	0.8243648409843445
1599	my first frequent experience of cbe app is critical-time failure such as suspending payment on air for 2-5 days with zero explanation, deducting from sender account without depositing to the receiver act. Another fatal error by the banking company as a whole (not the app itself though) is forced-banking with corporations without consent of employers-users of the corresponding corporations	2	2025-04-21	2	Google Play	negative	0.9995972514152528
1600	wow, amazing app	5	2025-04-21	2	Google Play	positive	0.9998503923416138
1601	use ful	5	2025-04-21	2	Google Play	negative	0.9949980974197388
1602	Great app	5	2025-04-21	2	Google Play	positive	0.999821126461029
1603	well app	5	2025-04-20	2	Google Play	positive	0.9993765950202942
1604	Actually it is inactive	4	2025-04-19	2	Google Play	negative	0.9996483325958252
1605	amazing	1	2025-04-19	2	Google Play	positive	0.999875545501709
1606	slow, only one account is used	2	2025-04-19	2	Google Play	negative	0.9997527003288268
1607	always CBE is the leading Commercial Bank≡ƒÆ¬≡ƒÆ¬≡ƒÆ¬	5	2025-04-18	2	Google Play	positive	0.9975135326385498
1608	i like it	5	2025-04-18	2	Google Play	positive	0.99985933303833
1609	why removing screenshot feature why?	1	2025-04-18	2	Google Play	negative	0.9981147050857544
1610	nice apps where network is good in connection	5	2025-04-18	2	Google Play	positive	0.9994925260543824
1611	Thank you!!!	5	2025-04-18	2	Google Play	positive	0.9998666048049928
1612	i can't take screenshot	1	2025-04-18	2	Google Play	negative	0.9897894263267516
1613	every update was made the system better and better until the March 19th, 2025 update, not allowing us to screenshot. you guys didn't understand how much it's a really quick and significant thing. You add extra steps to us, which makes the process draw back	3	2025-04-18	2	Google Play	negative	0.9861214756965636
1614	perfectly special	5	2025-04-18	2	Google Play	positive	0.999879002571106
1615	Fast and Reliable	5	2025-04-18	2	Google Play	positive	0.9998595714569092
1616	The best application I have ever seen in Ethiopia banking industry.	5	2025-04-17	2	Google Play	positive	0.9997448325157166
1617	great app!!!	5	2025-04-17	2	Google Play	positive	0.9998501539230348
1618	because sometimes it doesn't working it load too much	3	2025-04-17	2	Google Play	negative	0.9911932349205016
1619	Absolutely the best app! It works flawlessly, anytime and anywhere.	5	2025-04-17	2	Google Play	positive	0.9998784065246582
1620	ok	3	2025-04-16	2	Google Play	positive	0.9997851252555848
1621	very nice app ever!!!	5	2025-04-16	2	Google Play	positive	0.999826967716217
1622	the best app	5	2025-04-16	2	Google Play	positive	0.9998469352722168
1623	Biometric security for mobile banking is not available	5	2025-04-16	2	Google Play	negative	0.9996340274810792
1624	great	5	2025-04-15	2	Google Play	positive	0.9998630285263062
1625	Nice service	5	2025-04-15	2	Google Play	positive	0.9998397827148438
1626	great app	5	2025-04-15	2	Google Play	positive	0.999821126461029
1627	it's special apps	5	2025-04-15	2	Google Play	positive	0.9995416402816772
1628	In the updated version of the app, it takes more time to download the receipt.	3	2025-04-15	2	Google Play	negative	0.9985652565956116
1629	ßêêßê¥ßèòßï╡ßèÉßïì ßë╡ßê½ßèòßï¢ßè¡ßê╜ßèò ßë╡ßèòßê╜ ßëÑßë╗ ßï¿ßêÜßï½ßê│ßï¿ßïì ?	3	2025-04-14	2	Google Play	negative	0.9647620320320128
1630	Good ≡ƒöÑ	5	2025-04-14	2	Google Play	positive	0.9998576641082764
1631	very interesting app i am using every day fantastic	5	2025-04-14	2	Google Play	positive	0.9998443126678468
1632	lebaa bank	5	2025-04-14	2	Google Play	negative	0.9437296390533448
1633	Can't scan/recognize other banks' Interoperable QR Codes	1	2025-04-13	2	Google Play	negative	0.9983273148536682
1634	OK	5	2025-04-13	2	Google Play	positive	0.9997851252555848
1635	grateful app	5	2025-04-13	2	Google Play	positive	0.9998038411140442
1636	100% Γ¥ñ∩╕ÅΓ¥ñ∩╕ÅΓ¥ñ∩╕Å≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ≡ƒÖÅ	5	2025-04-13	2	Google Play	positive	0.9974650144577026
1637	everthing wellbeok	3	2025-04-13	2	Google Play	negative	0.7055724859237671
1638	"This mobile banking app is fast and user-friendly, but the only issue I encountered is that I can't access my bank statement within the app. I kindly request that this feature be added, similar to what is offered by other private bank mobile banking apps.	4	2025-04-13	2	Google Play	negative	0.9963226318359376
1639	nice app ≡ƒæî	5	2025-04-12	2	Google Play	positive	0.9996724128723145
1640	why did this app is not screenshot	5	2025-04-12	2	Google Play	negative	0.9989493489265442
1641	it so good app	5	2025-04-12	2	Google Play	positive	0.999868631362915
1642	the best app	3	2025-04-12	2	Google Play	positive	0.9998469352722168
1643	╪¼┘à┘è┘ä	5	2025-04-11	2	Google Play	positive	0.9271727204322816
1644	less network, specially to make fee for utility purpose	1	2025-04-11	2	Google Play	negative	0.994688868522644
1645	simply for used	4	2025-04-11	2	Google Play	negative	0.9918003678321838
1646	wow keep up	5	2025-04-10	2	Google Play	positive	0.9998539686203004
1647	its great app but when updating we can't take screen shot please try to fix it	3	2025-04-10	2	Google Play	negative	0.9934490323066713
1648	good one	5	2025-04-10	2	Google Play	positive	0.9998288154602052
1649	everything is easy thank you cebe	5	2025-04-10	2	Google Play	positive	0.9998396635055542
1650	ßìêßîúßèò ßëÇßêìßîúßìï	5	2025-04-10	2	Google Play	negative	0.7850579619407654
1651	ßîÄßëáßï¥	5	2025-04-09	2	Google Play	negative	0.6970561146736145
1652	but this app says can't sync	5	2025-04-09	2	Google Play	negative	0.9988365769386292
1653	waw	5	2025-04-09	2	Google Play	negative	0.7346174120903015
1654	to slow	3	2025-04-09	2	Google Play	negative	0.999487280845642
1655	work on screen shot system	4	2025-04-08	2	Google Play	negative	0.5902657508850098
1656	very very nice aplication	1	2025-04-08	2	Google Play	positive	0.9998292922973632
1657	wonder full and it is easy to use	5	2025-04-08	2	Google Play	positive	0.9996142387390136
1658	easy and reliable	2	2025-04-08	2	Google Play	positive	0.9998584985733032
1659	it is Very Useful app ≡ƒæì	5	2025-04-07	2	Google Play	positive	0.994536280632019
1660	very good	5	2025-04-07	2	Google Play	positive	0.9998520612716676
1661	perfect app	5	2025-04-07	2	Google Play	positive	0.9998340606689452
1662	I like it.	5	2025-04-07	2	Google Play	positive	0.999869465827942
1663	bugs	3	2025-04-07	2	Google Play	negative	0.9988303780555724
1664	commerial Bank	5	2025-04-06	2	Google Play	negative	0.6810255646705627
1665	Genat biru	2	2025-04-06	2	Google Play	negative	0.966159999370575
1666	≡ƒÖÅ	5	2025-04-06	2	Google Play	negative	0.6970561146736145
1667	it is good but it doesn't allow screen shot	4	2025-04-06	2	Google Play	positive	0.6723135709762573
1668	the best one	5	2025-04-06	2	Google Play	positive	0.9998371601104736
1669	You need to copy many things from other bank apps like Amole(Dashen)	2	2025-04-06	2	Google Play	negative	0.9967620372772216
1670	bring back the screenshot feature.	1	2025-04-05	2	Google Play	positive	0.9942916631698608
1671	Good!≡ƒæì	3	2025-04-05	2	Google Play	positive	0.9998579025268556
1672	best app to experience him that to smooth transaction among the customers	1	2025-04-05	2	Google Play	positive	0.9985142350196838
1968	nic app	5	2025-04-16	3	Google Play	positive	0.9797858595848083
1673	nice app suitable to use it. the only weak side is it need data connections and hoping will be fixed to offline i gave 4 rate	4	2025-04-05	2	Google Play	negative	0.955145001411438
1674	easy to use	5	2025-04-05	2	Google Play	positive	0.9988542795181274
1675	Good job to the CBE team on this mobile app! It's designed in a way that's simple and intuitive to navigate, which is great for everyone. It effectively handles the essential banking tasks I need to perform regularly. It's a practical and reliable tool that makes everyday banking much more convenient. Thank you for this useful application.	5	2025-04-04	2	Google Play	positive	0.9998189806938172
1676	ßêêßèö ßëáßîúßê¥ ßê¥ßê¡ßîÑ ßèÉßïì ßîìßèò screenshot ßê¢ßê¿ßîì ßëóßë╗ßêì ßê¥ßê¡ßîÑ ßèÉßëáßê¡	5	2025-04-04	2	Google Play	negative	0.8819229602813721
1677	before it was smooth and good. this time after the new update in 2025 i can not make screenshot of my recite. even the downlod button is very delayed in putting my recite in my gallery for simple proof. please fix this i am unable to show proof of payment to my clients. thankyou.	3	2025-04-04	2	Google Play	negative	0.9973511695861816
1678	cool Γ¥ñ	4	2025-04-04	2	Google Play	positive	0.9997991919517516
1679	Best app	5	2025-04-04	2	Google Play	positive	0.999686598777771
1680	best banking App	4	2025-04-03	2	Google Play	positive	0.999736487865448
1681	satisfied	5	2025-04-03	2	Google Play	positive	0.9997212290763856
1682	this app is very necessary app many people found it	5	2025-04-03	2	Google Play	positive	0.9980692267417908
1683	cbe very active Bank I'm using CBE app very very satisfaction	5	2025-04-03	2	Google Play	positive	0.989459753036499
1684	It made life alot easier. I cant even imagine having to make all those transactions in person. So this app was crucial for me. Very good app. well done.	5	2025-04-03	2	Google Play	positive	0.9997400641441344
1685	perfect	5	2025-04-03	2	Google Play	positive	0.9998517036437988
1686	thankyou	5	2025-04-02	2	Google Play	positive	0.999842882156372
1687	I Like it	5	2025-04-02	2	Google Play	positive	0.99985933303833
1688	I don't understand the reason, why I need to disable developer options to access the app, it has no security risks nor does it hinder the app's functionalities. This goes out to the dev, I hope your life is filled with inconveniences.	1	2025-04-02	2	Google Play	negative	0.9986600875854492
1689	smart app	5	2025-04-02	2	Google Play	positive	0.999789297580719
1690	isin ga'a	2	2025-04-02	2	Google Play	positive	0.7607290148735046
1691	it's great	5	2025-04-02	2	Google Play	positive	0.9998691082000732
1692	very good app and stars faction with work	5	2025-04-02	2	Google Play	positive	0.999858856201172
1693	It is excelent	5	2025-04-01	2	Google Play	positive	0.9998881816864014
1694	Smart	5	2025-04-01	2	Google Play	positive	0.9998456239700316
1695	ßëáßï¿ßïêßê⌐ ßèáßìòßï░ßë╡ ßèÑßï¿ßîáßï¿ßëÇßè¥ ßèÉßïì ßêêßèÉßîêßê⌐ ßëÑßê¡ ßê╡ßêîßêêßè¥ ßï¡ßêåßèôßêì ßèÑßèô ßê¥ßèò ßêêßê¢ßêêßë╡ ßìêßêìßîê ßêÿßê░ßêïßë╣ ßïêßêïßêà ßë╝ßîìßê«ßè¢ßêì ≡ƒÑ║≡ƒÑ║≡ƒÑ║	3	2025-04-01	2	Google Play	negative	0.9570206999778748
1696	very interesting app	5	2025-04-01	2	Google Play	positive	0.9997968077659608
1697	wow.......cbe.....keep it up.....!!!!!!	5	2025-04-01	2	Google Play	positive	0.998596966266632
1698	ßîèßï£ßèò ßëåßîúßëó ßèÑßèô ßêàßï¡ßïêßë╡ßèò ßëÇßêêßêì ßè¿ßêÜßï½ßï░ßê¡ßîë ßèóßë╡ßï¼ßî▓ßï½ ßè½ßêë ßìïßï¡ßèôßèòßê╡ ßèáßìòßêìßè¼ßê╜ßèûßë╜ ßêüßêë ßï¡ßêä ßï¡ßêêßï½ßêì	5	2025-04-01	2	Google Play	negative	0.9510264992713928
1699	Excellent≡ƒÖÅapp	5	2025-04-01	2	Google Play	negative	0.6970561146736145
1700	the most useful	5	2025-04-01	2	Google Play	positive	0.9997223019599916
1701	I am more satisfied in this app . More sure you have to secure.	4	2025-04-01	2	Google Play	positive	0.9787845015525818
1702	Easy to use	5	2025-04-01	2	Google Play	positive	0.9988542795181274
1703	very good, but sometimes NUR CBE comes without my consent. even if I choose locked, it appears	4	2025-04-01	2	Google Play	negative	0.9585953950881958
1704	Excellent !!!	5	2025-04-01	2	Google Play	positive	0.999865174293518
1705	always we relay on	5	2025-04-01	2	Google Play	positive	0.9971832633018494
1706	I'm lucky to have this≡ƒÖÅ thank you CBE.	5	2025-04-01	2	Google Play	positive	0.999750792980194
1707	it's need more improvement like Tellbirr.	4	2025-04-01	2	Google Play	negative	0.999363124370575
1708	goode app	5	2025-04-01	2	Google Play	positive	0.9997406601905824
1709	a very nice app.≡ƒæì≡ƒæì≡ƒæì	5	2025-04-01	2	Google Play	positive	0.9998323917388916
1710	safe easy & fast	5	2025-04-01	2	Google Play	positive	0.999711573123932
1711	it's good app	5	2025-04-01	2	Google Play	positive	0.9998689889907836
1712	It is veary useful app but screen shout was impossible .solve this problem	5	2025-04-01	2	Google Play	negative	0.9958590865135192
1713	ßîÑßê⌐ ßèÉßïì	5	2025-04-01	2	Google Play	negative	0.7850579619407654
1714	ßèÑßîàßîì ßëáßîúßê¥ ßîÑßê⌐ ßèáßìò	5	2025-04-01	2	Google Play	negative	0.8616324663162231
1715	ßëáßîúßê¥ ßêâßê¬ßìì ßèÉßïì ßîìßèò ßëÑßê¡ ßëáßêÜßë░ßêïßêêßììßëáßë╡ ßïêßëàßë╡ ßë░ßëÇßèòßê╖ßêì ßï¡ßêïßêì ßèÑßêïßìè ßêÿßêìßè¡ßë▒ ßï¡ßï░ßê¡ßê│ßêì ßîìßèò ßèáßï¡ßëÇßèòßê╡ßê¥	5	2025-04-01	2	Google Play	negative	0.9528431296348572
1716	suitable app	4	2025-04-01	2	Google Play	positive	0.9997665286064148
1717	Dear cbe this app is not comparable with 21century and pls try to solve it.≡ƒÆÇ≡ƒÆÇ≡ƒÆÇ	1	2025-04-01	2	Google Play	negative	0.9995038509368896
1718	best transaction method of financial	5	2025-04-01	2	Google Play	positive	0.9995972514152528
1719	#CBE is Now going to on the right Pathway/track/!! Thank you CBE one step ahead on payment platform app!!	5	2025-04-01	2	Google Play	positive	0.9995881915092468
1720	It literarily don't work at all	4	2025-04-01	2	Google Play	negative	0.9995075464248656
1721	good give us plus	5	2025-04-01	2	Google Play	positive	0.9998716115951538
1722	Very good application. However, I have one functionality recommendation. What if you let the app transfer money to any telebirr account as for MPESA? By the way, I am not the only one to ask this. Thank you!	4	2025-04-01	2	Google Play	positive	0.9895473718643188
1723	before update it was able to screenshot while after update I can't able to screenshot the transfere details	4	2025-04-01	2	Google Play	negative	0.9852171540260316
1724	Tnc Cbe	5	2025-04-01	2	Google Play	positive	0.9070304036140442
1725	it is good app. But you have integrate cbe with cbe birr. to allow cardless withdrawal directly from our accout!	4	2025-03-31	2	Google Play	negative	0.9151977896690368
1726	great apps	5	2025-03-31	2	Google Play	positive	0.999853491783142
1727	Excellent	5	2025-03-31	2	Google Play	positive	0.9998434782028198
1728	Great app!	4	2025-03-31	2	Google Play	positive	0.9998462200164796
1729	CBE	5	2025-03-31	2	Google Play	positive	0.9966009855270386
1730	very good ≡ƒæì ≡ƒæÅ	5	2025-03-31	2	Google Play	positive	0.99985933303833
1731	great when it works	5	2025-03-31	2	Google Play	positive	0.9998693466186525
1732	the app is very good, but why screenshots is impossible?	5	2025-03-31	2	Google Play	negative	0.981265127658844
1733	excellent match application	5	2025-03-31	2	Google Play	positive	0.9998453855514526
1734	The Best app≡ƒÿì≡ƒÿì≡ƒÿì	5	2025-03-31	2	Google Play	positive	0.9998503923416138
1735	excellent app	5	2025-03-31	2	Google Play	positive	0.9998356103897096
1736	easy to use and user friendly	5	2025-03-31	2	Google Play	positive	0.9979179501533508
1737	very nice	5	2025-03-31	2	Google Play	positive	0.9998563528060912
1738	ßèáßê¬ßìì ßèÉßïì ßëáßë░ßêêßï¡ ßï¿ßèáßê╗ßê½ ßï░ßêàßèÉßë▒ ßêÿßê¿ßîïßîêßîí ßë░ßêÿßë╜ßë╢ßè¢ßêì	3	2025-03-31	2	Google Play	negative	0.920040488243103
1739	well software	5	2025-03-31	2	Google Play	positive	0.999262273311615
1740	ßîÑßê⌐ ßèÉßïì ßèáßèòßï│ßèòßï┤ ßê╡ßë│ßè¡ ßëóßï½ßï░ßê¡ßîìßê¥	4	2025-03-31	2	Google Play	negative	0.8832125663757324
1741	CBE very good apps	5	2025-03-31	2	Google Play	positive	0.9998394250869752
1742	This application fast, secure and more convenient. Thanks CBE	5	2025-03-31	2	Google Play	positive	0.9992094039916992
1743	excellent service	5	2025-03-31	2	Google Play	positive	0.9998576641082764
1744	love	3	2025-06-06	3	Google Play	positive	0.9998735189437866
1745	ßêÿßë╕ßê╕ßîá	5	2025-06-03	3	Google Play	negative	0.6970561146736145
1746	wow	5	2025-06-03	3	Google Play	positive	0.999592125415802
1747	gadaa	5	2025-06-01	3	Google Play	negative	0.7211462259292603
1748	Massive upgrade from the Amole app.	5	2025-05-31	3	Google Play	positive	0.9646421074867249
1749	good	4	2025-05-31	3	Google Play	positive	0.999816119670868
1750	very good for this app	5	2025-05-31	3	Google Play	positive	0.9998138546943665
1751	top	5	2025-05-31	3	Google Play	positive	0.9997069239616394
1752	this app better than Amole . but the biometric on new update doesn't work	4	2025-05-31	3	Google Play	negative	0.999607503414154
1753	Wow	5	2025-05-30	3	Google Play	positive	0.999592125415802
1754	good	5	2025-05-30	3	Google Play	positive	0.999816119670868
1755	wow to it saff and this app	5	2025-05-30	3	Google Play	positive	0.998571276664734
1756	it too slow	3	2025-05-29	3	Google Play	negative	0.9996801614761353
1757	ßï│ßê╜ßèò ßëúßèòßè¡ ßï¡ßêêßï½ßêì	4	2025-05-28	3	Google Play	negative	0.8337247967720032
1758	real life changer	5	2025-05-28	3	Google Play	positive	0.9997788071632384
1759	≡ƒæì≡ƒæì≡ƒæì	5	2025-05-28	3	Google Play	negative	0.6970561146736145
1760	nice application	5	2025-05-27	3	Google Play	positive	0.9998229146003724
1761	useless app ever loading take long	1	2025-05-27	3	Google Play	negative	0.9997350573539734
1762	Game changer app! Dashen Bank Super App is fast, secure, and easy to use. The three-click payment makes sending money super quick, and the QR code payment is perfect for cashless shopping. I also love the biometric login and easy airtime and bill payments. Everything I need is in one place. Dashen Bank has really raised the bar for digital banking in Ethiopia. Highly recommended!	5	2025-05-26	3	Google Play	positive	0.999617338180542
1763	very useful App	1	2025-05-26	3	Google Play	positive	0.9995785355567932
1764	Simple, robust features? Yes, please! But the endless loading screen killed the funΓÇöI couldnΓÇÖt use it for days. Fix the glitch, and IΓÇÖll yeet a higher rating!	2	2025-05-26	3	Google Play	negative	0.835149884223938
1765	Wawww	5	2025-05-24	3	Google Play	negative	0.941804051399231
1766	it is good but some times says duplicate transaction why?	5	2025-05-24	3	Google Play	negative	0.9836629629135132
1767	very Nice	5	2025-05-23	3	Google Play	positive	0.9998563528060912
1768	its best	5	2025-05-23	3	Google Play	positive	0.9998121857643129
1769	it is not as good as to the other mobile bank app.	1	2025-05-22	3	Google Play	negative	0.999786913394928
1770	The best of best is now arrived **Empowering Your Financial Freedom** "Experience seamless banking at your fingertips with Dashen Bank. Empowering your financial freedom, anytime, anywhere!" **Innovation Meets Convenience** "Dashen Bank Mobile Banking: Where innovation meets convenience. **Secure and Reliable** "Bank with confidence	5	2025-05-22	3	Google Play	positive	0.9996517896652222
1771	Nothing is changed in the updated version. You have been collecting comments but where is the feed back you improved in this version. superapp is mot functioning today.	4	2025-05-20	3	Google Play	negative	0.9939862489700316
1772	The best app ever in finance sector	5	2025-05-18	3	Google Play	positive	0.9998089671134948
1773	Its good app than other compitators but it confuse when we transfer it needs OTP and PIN most user inter their pin instead of OTP we know the litrecy level of our society so if it is device based i dont know the needs of OTP so please try to fix	3	2025-05-18	3	Google Play	negative	0.9983357787132264
1774	dashen bank or dashen super app?	1	2025-05-17	3	Google Play	negative	0.9937525391578674
1775	wowwwe app	5	2025-05-17	3	Google Play	positive	0.9829692840576172
1776	Transferring to other bank accounts is a hastle and inconvenient .Get used to seeing " please try again "	2	2025-05-17	3	Google Play	negative	0.9994332194328308
1777	always lagging	1	2025-05-16	3	Google Play	negative	0.9998013377189636
1778	Amazing Application...	5	2025-05-16	3	Google Play	positive	0.9998786449432372
1779	Fantastic	5	2025-05-16	3	Google Play	positive	0.9998743534088136
1780	Dashen bank app is very good, but sometimes it is not working well	5	2025-05-15	3	Google Play	negative	0.9976341724395752
1781	its my choice	5	2025-05-15	3	Google Play	positive	0.9962010979652404
1782	wow apo	5	2025-05-15	3	Google Play	positive	0.99947851896286
1783	awesome app keep going	5	2025-05-14	3	Google Play	positive	0.9998502731323242
1784	≡ƒæì	5	2025-05-14	3	Google Play	negative	0.6970561146736145
1785	It grows ethiopian digital banking step ahead.All fetures in one,simple fast and convince.	5	2025-05-14	3	Google Play	positive	0.9992207288742064
1786	Game changer	5	2025-05-13	3	Google Play	positive	0.988757073879242
1787	Totally amazing	5	2025-05-13	3	Google Play	positive	0.9998782873153688
1788	super ≡ƒÿÄ	5	2025-05-13	3	Google Play	positive	0.9331687092781068
1789	what a helpful app!!!!	5	2025-05-13	3	Google Play	positive	0.9990901947021484
1790	Good	4	2025-05-13	3	Google Play	positive	0.999816119670868
1791	nice	5	2025-05-13	3	Google Play	positive	0.9998552799224854
1792	To be honest, best banking and lifestyle app in Ethiopia.	5	2025-05-12	3	Google Play	positive	0.9997262358665466
1793	fast	5	2025-05-12	3	Google Play	positive	0.9989494681358336
1794	A must have, seamless, all in one digital platform "DB Superapp"! Keep living your motto "Always one step ahead"	5	2025-05-12	3	Google Play	positive	0.9966461062431335
1851	Effecting payment via the app has created convenience to the recipients in easily confirming the payments received!	5	2025-04-22	3	Google Play	positive	0.973114848136902
1795	This App makes digital banking effortless and convenient. User-friendly interface, secure transactions, and excellent features for managing finances efficiently.	4	2025-05-10	3	Google Play	positive	0.9991555213928224
1796	Amazing app super easy to use and best design. loved it.	5	2025-05-09	3	Google Play	positive	0.9998630285263062
1797	its the best ever	5	2025-05-09	3	Google Play	positive	0.9998552799224854
1798	excellent game changer App	5	2025-05-08	3	Google Play	positive	0.9998358488082886
1799	I am highly excited by using this application and it is the most favorable as well as preferrable mobile app.	5	2025-05-03	3	Google Play	positive	0.9995176792144777
1800	it seems me logging out within minutes	1	2025-05-03	3	Google Play	negative	0.9982207417488098
1801	nice app especially GUI and I have got some error when you send within dashen bank the receipter is not get SMS notification	4	2025-05-03	3	Google Play	negative	0.985798954963684
1802	yes i want dashen super open	5	2025-05-02	3	Google Play	positive	0.999435007572174
1803	Best App	5	2025-05-02	3	Google Play	positive	0.999686598777771
1804	faster than this version	5	2025-05-01	3	Google Play	positive	0.9991979002952576
1805	Best UI mobile banking app, props to design team	5	2025-04-30	3	Google Play	positive	0.9991565942764282
1806	thank you	4	2025-04-30	3	Google Play	positive	0.9998352527618408
1807	great app	5	2025-04-30	3	Google Play	positive	0.999821126461029
1808	bad.	1	2025-04-30	3	Google Play	negative	0.9997698664665222
1809	Dashen bank always one step ahead	5	2025-04-30	3	Google Play	positive	0.9996015429496764
1810	dashen super app is secure band very easy	5	2025-04-29	3	Google Play	positive	0.9899651408195496
1811	It is very fast and secured mobile banking app! I like this app!	5	2025-04-29	3	Google Play	positive	0.9995939135551452
1812	best app I have ever seen	5	2025-04-29	3	Google Play	positive	0.9996102452278136
1813	best of best	5	2025-04-29	3	Google Play	positive	0.9997496008872986
1814	waw	5	2025-04-28	3	Google Play	negative	0.7346174120903015
1815	best app	5	2025-04-28	3	Google Play	positive	0.999686598777771
1816	Its slow when i try to see the Recent Transaction and stucked	1	2025-04-28	3	Google Play	negative	0.9992387294769288
1817	wowslnwoooo wowwww amazing !!!!!!!!	5	2025-04-28	3	Google Play	positive	0.999722182750702
1818	wow appl	5	2025-04-28	3	Google Play	positive	0.9994691014289856
1819	why do i have to change a pin number i use my finger print so dummy	1	2025-04-27	3	Google Play	negative	0.9994646906852722
1820	very nice	5	2025-04-26	3	Google Play	positive	0.9998563528060912
1821	great	4	2025-04-26	3	Google Play	positive	0.9998630285263062
1822	It is very slow and it lacks many features to be a super app. High rating is given by their employees, not by the customers.	1	2025-04-25	3	Google Play	negative	0.9997708201408386
1823	Smooth and secure experience transfers, bill payments, and tracking expenses are all effortless. The intuitive design makes banking on the go.	5	2025-04-24	3	Google Play	positive	0.9996446371078492
1824	Very easy and Fast.	5	2025-04-24	3	Google Play	positive	0.9995487332344056
1825	Incomparably user-friendly and fast app for mobile banking.	5	2025-04-24	3	Google Play	negative	0.9392751455307008
1826	there is nothing super about this app, repeatedly failed transaction and wastes customer valuable time. if you have to do system upgrade do it at a time when there is less traffic demand. your Technical difficulty should not be reflected on customer.	2	2025-04-24	3	Google Play	negative	0.9993688464164734
1827	execellent	5	2025-04-24	3	Google Play	negative	0.9866806864738464
1828	This super app is a total game-changerΓÇöfast, reliable, and packed with everything I need in one place. ItΓÇÖs seamless and super convenient. Love it!"	5	2025-04-23	3	Google Play	positive	0.9998038411140442
1829	All in One Γ£ì∩╕Åsecure Γ£ì∩╕Åreliable Γ£ì∩╕Åconvenient. Digital banking game changer!!	5	2025-04-23	3	Google Play	negative	0.759855329990387
1830	it is incredible product.	5	2025-04-23	3	Google Play	positive	0.9998867511749268
1831	I'm really impressed with this app! ItΓÇÖs user-friendly, runs smoothly, and has all the features I need. Makes my tasks so much easier and saves me a lot of time. Highly recommended!	5	2025-04-23	3	Google Play	positive	0.9997783303260804
1832	ok	5	2025-04-23	3	Google Play	positive	0.9997851252555848
1833	It's an amazing app, experience it!!	5	2025-04-23	3	Google Play	positive	0.9998760223388672
1834	This is the best banking app ever. I recommend everyone to use it.	5	2025-04-23	3	Google Play	positive	0.9997599720954896
1835	It is the best application!!!	5	2025-04-22	3	Google Play	positive	0.9998468160629272
1836	Exceptional digital experience, SupperApp will bring new paradigm shift in the banking business. Bravo Dashen keep it up!!!!	5	2025-04-22	3	Google Play	positive	0.9998323917388916
1837	its features are so dynamic	5	2025-04-22	3	Google Play	positive	0.999643087387085
1838	fast &Friendly user Application.	5	2025-04-22	3	Google Play	positive	0.9993237257003784
1839	Fast, Reliable and User Friendly. Keep it Up	5	2025-04-22	3	Google Play	positive	0.9997664093971252
1840	#dashen super app is easy to use, secure & fast transaction≡ƒÿì	5	2025-04-22	3	Google Play	positive	0.9874821901321412
1841	i love this app esp 3 click that make e-commerce easier and convinient.	5	2025-04-22	3	Google Play	positive	0.9995126724243164
1842	Dashen Super App contains extended selections for customers and can be easily accessible and also friendly to use.	5	2025-04-22	3	Google Play	positive	0.9990369081497192
1843	Great for everyday banking and payments on the go	5	2025-04-22	3	Google Play	positive	0.9998255372047424
1844	"Dashen Super App'' is impressive with its focus on simplicity, speed, and quality. The user interface is clean and easy to understand. Transactions process quickly, and the overall quality of the app is top-notch. A must-have for Dashen Bank customers. ßï│ßê╕ßèò ßëúßèòßè¡ ßèáßèòßï╡ ßèÑßê¡ßê¥ßîâ ßëÇßï│ßêÜßìó	5	2025-04-22	3	Google Play	positive	0.9997794032096864
1845	making transactions has never been easier. the new update is just amazing	5	2025-04-22	3	Google Play	positive	0.9998310804367064
1846	The app has various usefull functions, which make easy the payment system. Also, it will connect with sellers having reasonable prices.	5	2025-04-22	3	Google Play	positive	0.9850904941558838
1847	The app has great user interface with comprehensive payments and E-commerce platforms. And also it includes unique features such as chat Banking and budget.	5	2025-04-22	3	Google Play	positive	0.999284565448761
1848	betam mirt Ena betam le atikakem kelel Yale Ena michu application nw	5	2025-04-22	3	Google Play	negative	0.9886249303817748
1849	Convenient!	5	2025-04-22	3	Google Play	positive	0.9936902523040771
1850	It is an amazing application that meets the needs of customers.	5	2025-04-22	3	Google Play	positive	0.999864935874939
1852	the best Supper App ever	5	2025-04-22	3	Google Play	positive	0.999849796295166
1853	This is the best app ever, when is it planned to include digital lending and gasification?	5	2025-04-22	3	Google Play	positive	0.9990382194519044
1854	A powerful, local solution that rivals any global app. I love how easy it is to explore services and products.	5	2025-04-22	3	Google Play	positive	0.999815046787262
1855	Dashen bank is my number one choice	5	2025-04-22	3	Google Play	positive	0.9996331930160522
1856	Assefa Genetu = Dashen superup is the latest and inclussive .I am happy with this super up.	5	2025-04-22	3	Google Play	positive	0.9994714856147766
1857	The App is incredibly user-friendly and brings multiple services into one place. It's fast, intuitive, and makes daily tasks super convenient. A true all-in-one solution!	5	2025-04-21	3	Google Play	positive	0.9991614818572998
1858	Proudly made in Ethiopia, this innovation delivers more than promised. The marketplace is a major boost for local commerce	5	2025-04-21	3	Google Play	positive	0.9998248219490052
1859	it so fanrastic and user friendly app. Bravo Dashen bank thanks.	5	2025-04-21	3	Google Play	positive	0.9990429282188416
1860	one of the best digital platforms I've used! from smooth transactions to a seamless shopping experience, highly recommended.	5	2025-04-21	3	Google Play	positive	0.9997945427894592
1861	A proudly Ethiopia innovation that delivers beyond expectations. The marketplace feature is a big win for local shoppers bnd sellers	5	2025-04-21	3	Google Play	positive	0.9997891783714294
1862	Dashen Super App is a game-changer! ItΓÇÖs fast, user-friendly, and packed with features that make everyday banking and transactions super convenient. I love how everything I need from mobile banking to utility payments is all in one place. The interface is clean, and everything works smoothly. Definitely one of the best apps out there. Highly recommended!	5	2025-04-21	3	Google Play	positive	0.9998010993003844
1863	Easy to use and has many options. It is the best financial app I have ever used.	5	2025-04-21	3	Google Play	positive	0.9997546076774596
1864	Highly impressed! Dash Bank really nailed it with this app. Secure, reliable, and packed with features I use daily	5	2025-04-21	3	Google Play	positive	0.9998537302017212
1865	One of the best digital platforms IΓÇÖve used! From smooth transactions to a seamless shopping experience, Highly recommended	5	2025-04-21	3	Google Play	positive	0.9997860789299012
1866	This app has everything I was looking for, dashen is becoming a grandmaster.	5	2025-04-21	3	Google Play	positive	0.9995651841163636
1867	Very convenient	5	2025-04-21	3	Google Play	positive	0.9988445043563844
1868	The user experience is seamless, and everything just works perfectly right out of the box. I canΓÇÖt believe how much time and effort it saves me every day.	5	2025-04-21	3	Google Play	positive	0.9997797608375548
1869	wawwwww what nice super app !!keep it up dashen bank !!	5	2025-04-21	3	Google Play	positive	0.9991359114646912
1870	Dashen SuperApp the ultimate all-in-one solution! From banking and shopping to bill payments, everything you need is right at your fingertips. Life just got a whole lot easier!	5	2025-04-21	3	Google Play	positive	0.9991750121116638
1871	It is,really super because of its unique offerings to individuals and businesses.It is a secure UX first app intended to cater comprehensive digital meeds.I am also happy to know that Dashen is considering to make the app more inclusive by lowering the mobile version requirements .	5	2025-04-21	3	Google Play	positive	0.9995538592338562
1872	the very easy, secured, fast and multifunctional dashen supper application I ever seen. dashen really one steps ahead!!!	5	2025-04-21	3	Google Play	positive	0.99827241897583
1873	One app for everything! I can shop, manage my bank account , and do so much more . Truly a super app	5	2025-04-21	3	Google Play	positive	0.9994187355041504
1874	one of the best digital platforms IΓÇÖve used! From smooth transactions to a seamless shopping experie	5	2025-04-21	3	Google Play	positive	0.9995588660240172
1875	Dashen Bank super App is the most suitable, reliable, and fast digital banking system.	5	2025-04-21	3	Google Play	positive	0.9992392063140868
1876	Excellent app.	5	2025-04-21	3	Google Play	positive	0.99984610080719
1877	This is what we call banking app. As professional I want banking app as simple as this and an app rich of features that align with my lifestyle.	5	2025-04-21	3	Google Play	positive	0.9991500377655028
1878	thanks again	5	2025-04-21	3	Google Play	positive	0.9998217225074768
1879	Super Easy To Use and Fast Transaction.	5	2025-04-21	3	Google Play	positive	0.996877908706665
1880	I have an incredible experience with Dashen super app, what an amazing platform is it?. keep pioneering in technological advancement ≡ƒæÅ≡ƒæÅ≡ƒæÅ	5	2025-04-21	3	Google Play	positive	0.999527096748352
1881	i can't recommend the Dashen Super App enough! This app is truly a game changer for anyone looking for a seamless and efficient way to manage their daily life. It combines multiple essential services into one easy-to-use platform, saving time and simplifying tasks The user interface is modern, intuitive, and super responsive, making navigation a breeze. Whether it's banking, payment services, or accessing lifestyle features, everything is just a few clicks away!!	5	2025-04-21	3	Google Play	positive	0.9953939914703368
1882	The app is incredibly handy for managing multiple financial tasks, from bill payments to managing budgets. ItΓÇÖs saved me a lot of time and made banking way more convenient. Definitely worth checking out!	5	2025-04-21	3	Google Play	positive	0.9982413053512572
1883	what an App	5	2025-04-21	3	Google Play	positive	0.9938238859176636
1884	The new e-commerce feature is incredibly amazing and user friendly.	5	2025-04-21	3	Google Play	positive	0.9998598098754884
1885	dashen bank supper app is the most easy to use and have high speed,quality and I like features like chat,budget,fuel payment, and security for my opinion this product is techonolgy edge,this international standard thanks for product oweners (dashen bank)	3	2025-04-21	3	Google Play	positive	0.9974797368049622
1886	The Dashen supperapp is a revolutionary advancement in digital banking, combining exceptional usability, an intuitive interface and a seamless user experience. among its standout features are the integration of QR codes, account statement, transaction advise, chat, transaction authentication for limit thresholds, budgeting and different app in a single dashboard. Truly ahead of the curve ..... keep up the excellent work ≡ƒñ¥≡ƒæÅ	5	2025-04-21	3	Google Play	positive	0.9997472167015076
1887	A proudly Ethiopian innovation that delivers beyond expectations. The marketplace feature is a big win for local shoppers and sellers. Very impressed with the new updates, The e-commerce section is smooth and supports Ethiopian merchants!	5	2025-04-21	3	Google Play	positive	0.9998795986175536
1888	Very impressed with the new updates, The e-commerce section is smooth and supports Ethiopian merchants.	5	2025-04-21	3	Google Play	positive	0.9998557567596436
1963	fast best app	5	2025-04-19	3	Google Play	positive	0.999737560749054
1964	Nice App	5	2025-04-18	3	Google Play	positive	0.9998061060905457
1889	Dashen Bank Super App is fast, reliable, and super easy to use. All my banking needs are handled smoothly in one place. Clean design and seamless experience ΓÇô highly recommended!	5	2025-04-21	3	Google Play	positive	0.9997962117195128
1890	Db sup app is A platform or an application that can grasp more satisfactions through fastest mode of operation which means for budget planning, to use QR code(scan, pay, go) chat with staff, acc to acc other bank ft, merchant payment, and easly. I addition to i satisfied and i invite everyone to use those platform!!.	5	2025-04-21	3	Google Play	positive	0.894790768623352
1891	the chat banking and unique and only app that alow money request!!	5	2025-04-21	3	Google Play	negative	0.9822685718536376
1892	Better and inclusive app!	5	2025-04-21	3	Google Play	positive	0.999285876750946
1893	Amazing Application	5	2025-04-21	3	Google Play	positive	0.9998698234558104
1894	It keep my time to pay my bills and I generate my satment easily	5	2025-04-21	3	Google Play	positive	0.996675968170166
1895	It's an amazing app that is up-to-date with the times, wow wow	5	2025-04-21	3	Google Play	positive	0.999868392944336
1896	A game-changing Ethiopian innovationΓÇöwhere shopping meets opportunity. The marketplace feature connects buyers and sellers like never before.	5	2025-04-21	3	Google Play	positive	0.9993858337402344
1897	Dashen Super App isnΓÇÖt just an app ΓÇö itΓÇÖs an experience. Effortless, powerful, and built for the future	5	2025-04-21	3	Google Play	positive	0.9997283816337584
1898	This Is An Amazing App with Uniqe Quality,Easy And Fast Mobile Banking App.	5	2025-04-21	3	Google Play	positive	0.9997382760047911
1899	Dashen SuperApp is a lifesaver! Banking, shopping, and bills in one super easy app. The new e-commerce feature is awesome and supports local merchants. Fast, secure, and proudly Ethiopian.Download it nowΓÇöyou wonΓÇÖt regret it!	5	2025-04-21	3	Google Play	positive	0.9996484518051147
1900	Dashen SuperApp blends finance, shopping, and daily services effortlessly. The new e-commerce feature is smooth and supports local merchantsΓÇöproud to back an Ethiopian-made solution!	5	2025-04-21	3	Google Play	positive	0.9998247027397156
1901	A solid step forward by Dashen Bank. The SuperApp combines essential banking features with lifestyle services, making everything accessible in one place. The interface is smooth, and transactions are quick and reliable. ItΓÇÖs clear a lot of thought went into the design and functionality. Great job!	5	2025-04-21	3	Google Play	positive	0.9998260140419006
1902	Dashen bank super app is the crucial and convenient app in Ethiopia. there is no other app to compare with Dashen bank super app	5	2025-04-21	3	Google Play	positive	0.9817668795585632
1903	All-in-one finance & e-commerce super app! Pay, save, shop seamlessly. Fast, secure. #BankAndShop	5	2025-04-21	3	Google Play	positive	0.9943593144416808
1904	it's a hestorical app. in the bank industry.	5	2025-04-21	3	Google Play	negative	0.9915915727615356
1905	A game changer in Ethiopian digital banking fast, secure, and packed with services. Everything you need, all in one powerful app. A true leap toward financial convenience and innovation!	4	2025-04-21	3	Google Play	positive	0.9996839761734008
1906	easy &,simple to use	5	2025-04-21	3	Google Play	positive	0.9968307614326476
1907	Banking, but make it smart. Local solutions, all in one place. Smooth, fast, and actually saving time. Feels like the future. Love it!	5	2025-04-21	3	Google Play	positive	0.999881148338318
1908	All in one, that is it ≡ƒæî	5	2025-04-21	3	Google Play	positive	0.8945459127426147
1909	, Dashen Bank Supper App is multipurpose, convenient, very attractive and Make life easier	5	2025-04-21	3	Google Play	positive	0.9995104074478148
1910	very easy and flexible app.	5	2025-04-21	3	Google Play	positive	0.9997106194496156
1911	I choose Dashen Bank Super Up since, it is easy to use & it has attractive features !	5	2025-04-21	3	Google Play	positive	0.9998281002044678
1912	dashen super app is simple faster and reliable.	5	2025-04-21	3	Google Play	positive	0.999518632888794
1913	Dashen Bank Super App is a game-changer! The user-friendly design, wide range of services, and smooth performance make it incredibly convenient for everyday banking. ItΓÇÖs fast, secure, and truly reflects the bankΓÇÖs commitment to digital excellence. Highly recommended!	5	2025-04-21	3	Google Play	positive	0.999748170375824
1914	The app keeps getting better with every update! Smooth performance, great UI, and top-notch security. Thank you for making banking so convenient!"	5	2025-04-21	3	Google Play	positive	0.9995062351226808
1915	this app is the most simply to use and secure safe i love it to use for any bank transaction	5	2025-04-21	3	Google Play	positive	0.9964408278465272
1916	After i download the app recently had a smooth expriance, its user friendly, fast, and everything works as expected. keep up the good work.	5	2025-04-21	3	Google Play	positive	0.9997468590736388
1917	An app with High performance and advanced features!	5	2025-04-21	3	Google Play	positive	0.9995831847190856
1918	It is a very user friendly, attractive user interface, full of useful features. I really encourage everyone to give it a try.	5	2025-04-21	3	Google Play	positive	0.9997954964637756
1919	Good actually , but it have to WORK when developer option is on ≡ƒÖÅ	5	2025-04-21	3	Google Play	negative	0.9746389389038086
1920	All-in-one convenience, From managing accounts to paying bills and shopping online and the chat banking is game changer, this app does it all seamlessly.	5	2025-04-21	3	Google Play	positive	0.9981800317764282
1921	I appreciate that Dashen Bank takes lifestyle services into account.	5	2025-04-21	3	Google Play	positive	0.9980393052101136
1922	keep it up!	5	2025-04-21	3	Google Play	positive	0.9998477697372437
1923	amazing app really i loved it .that's why we say dashen bank is one stap ahead. It's the best mobile application that should be on every phone.	5	2025-04-21	3	Google Play	positive	0.9998038411140442
1924	very comfortable app keep it	5	2025-04-21	3	Google Play	positive	0.999691367149353
1925	it has clear detail information about the application so it helps customer how to use the app. and it is very easy to use and also app is secure.	5	2025-04-21	3	Google Play	positive	0.999531626701355
1926	I have been using the Dashen Supper app mobile banking app , and overall, I appreciate its features.However,IΓÇÖve noticed that when I turn on the developer options on my device, the app stops functioning properly. It would be great if you could look into this issue, as I often need to access developer settings for other applications . Thank you for your attention to this matter!	5	2025-04-21	3	Google Play	negative	0.906873881816864
1927	easiness to use with fast response time	5	2025-04-21	3	Google Play	negative	0.964725911617279
1965	nice app ever	5	2025-04-17	3	Google Play	positive	0.9998384714126588
1966	very disappointing app. Closes frequently and unstable in function	2	2025-04-17	3	Google Play	negative	0.9997677206993104
1967	Feature-rich? Absolutely. But the speed? Painfully slow. Seriously, is it communicating with a server on Mars or something?	5	2025-04-16	3	Google Play	negative	0.9992289543151855
1928	The new mobile banking application is a major upgrade! ItΓÇÖs incredibly user-friendly, with a clean and modern design that makes navigation simple and intuitive. I really appreciate how fast it loads and how smooth the overall experience is. All essential services like balance checks, transfers, and bill payments are eas y to find and use. The added security features give me peace of mind, and the app runs reliably without crashes or glitches. ItΓÇÖs clear a lot of thought went into the user experi	5	2025-04-21	3	Google Play	positive	0.9992745518684388
1929	As an Internal Customer, Dashen Bank SuperApp has greatly simplified my online banking experience. It's easy to use, allowing me to quickly check balances, transfer money and pay Bills. The app's advanced security features are highly secure, ensuring my data is well protected. The Three click, Chat Banking and IPS features have also given me a smarter experience. In deed Dashen Bank is always steping ahead!	5	2025-04-21	3	Google Play	positive	0.9990044236183168
1930	A truly impressive app ΓÇö user-friendly and a game-changer in Ethiopian banking. The Dashen Super App stands out as one of the most innovative and convenient digital banking solutions in EthiopiaΓÇÖs financial history. Smooth navigation, seamless features, and a wide range of services all in one place. Well done!	5	2025-04-21	3	Google Play	positive	0.9998193383216858
1931	dashen bank super up has very fast and convenience and also it has contain more things on one app .I am very interesting to use dashen bank super up	5	2025-04-21	3	Google Play	positive	0.9974090456962584
1932	The Dashen Bank Super App has truly elevated my mobile banking experience. It's fast, user-friendly, and packed with all the essential features. The interface is clean and intuitive, making navigation easy even for first-time users. I also appreciate the added security features that give me peace of mind while banking on the go. Dashen Bank has done an amazing job with this appΓÇöitΓÇÖs reliable, efficient, and always improving. Highly recommended for anyone looking for seamless digital banking!	5	2025-04-21	3	Google Play	positive	0.9998351335525512
1933	A fantastic product!! keep the good work.	5	2025-04-21	3	Google Play	positive	0.9998842477798462
1934	I am very impressed with the Dashen super app. It is user-friendly and operates efficiently. The budget and chatbot features are impressive, and all items can be purchased with just three clicks.	5	2025-04-21	3	Google Play	positive	0.9998030066490172
1935	The Dashen Super App offers a quick and user-friendly experience, bringing together a variety of services, like budgeting, payments, airtime recharges, and more, all in one convenient platform. Its sleek design and intuitive navigation ensure effortless transactions. It's evident that Dashen Bank has carefully crafted the app to make everyday financial activities easier. A great choice for anyone aiming to streamline their digital routines!	5	2025-04-21	3	Google Play	positive	0.999062716960907
1936	Dashen supper App is the most useful app for our customers	5	2025-04-21	3	Google Play	positive	0.9988586902618408
1937	it is the most amazing mobile app	5	2025-04-21	3	Google Play	positive	0.9998717308044434
1938	A Good and fast supper app thanks for dashen bank	5	2025-04-21	3	Google Play	positive	0.999788463115692
1939	Dear Users of the Dashen Bank Super App,I have been using the Dashen Bank Super App for a while now, and I must sayΓÇöitΓÇÖs truly a game-changer! The app is incredibly fast and reliable; IΓÇÖve never encountered any delays with my transactions. One feature I absolutely love is Chat Banking. It makes everyday tasks like checking my balance or transferring money as simple as sending a quick message. Also, the budgeting tool has been a huge help in tracking my spending and giving me a clearer	5	2025-04-21	3	Google Play	positive	0.9993189573287964
1940	Too best	1	2025-04-21	3	Google Play	positive	0.8775487542152405
1941	Dashen Bank Super Up,use the app and makes your easy,fast,convinent.	5	2025-04-21	3	Google Play	positive	0.9985912442207336
1942	To join digital world use supper app and make your life easy	5	2025-04-21	3	Google Play	positive	0.9870909452438354
1943	best mobile banking application	5	2025-04-21	3	Google Play	positive	0.9996380805969238
1944	This banking superapp is incredibly well designed. The design and appearance of the app and the overall experience I have when using the app is fantastic. The app is packed with features from banking to e-commerce all in one place.It even has a budget setting option which is super useful for managing my money. Everything runs smoothly and I love how convenient it has made my daily life. Huge Kudos to Dashen Bank. You are truly living up to the motto ''Always one step ahead." Keep it up!	5	2025-04-21	3	Google Play	positive	0.9998156428337096
1945	I was really amazed by the idea of an e-commerce service on a banking app. This is what it means to be one step ahead. Please include all kinds of products in there as soon as possible.	5	2025-04-21	3	Google Play	positive	0.9981945157051086
1946	this is what we expect to get service Dashen Bank always like his slogan	5	2025-04-21	3	Google Play	negative	0.8835349082946777
1947	Dashen SupApp is the most contemporary application, offering a great experience by enabling users to perform multiple tasks through a single platformΓÇösuch as chatting with friends, transferring money, paying bills, and more. It is the first app of its kind in the Ethiopian banking industry, making it a remarkable opportunity for entrepreneurs working in app-based sales and software marketing. Good job, Dashen Bank!	5	2025-04-21	3	Google Play	positive	0.9997934699058532
1948	Dashen Super App gives me an amazing convenience and makes life easy.	5	2025-04-21	3	Google Play	positive	0.999823272228241
1949	excellent mobile banking app	5	2025-04-21	3	Google Play	positive	0.9998179078102112
1950	Wow! like his name Super App...	5	2025-04-21	3	Google Play	positive	0.9985873699188232
1951	Dashen supper app is the most special. ßï¡ßê¥ßë╛ßë▒ ßï¡ßêêßï½ßï½ßêì!!!!	5	2025-04-21	3	Google Play	positive	0.9926958084106444
1952	convenient and fast	5	2025-04-21	3	Google Play	positive	0.9996170997619628
1953	Best- in-class app.	5	2025-04-21	3	Google Play	positive	0.999584972858429
1954	I really like this amazing application and Dashen Supper app that has made my life easier.	5	2025-04-21	3	Google Play	positive	0.9997171759605408
1955	Superb	5	2025-04-21	3	Google Play	positive	0.9998656511306764
1956	amazing features, faster and easy to use	5	2025-04-21	3	Google Play	positive	0.9998817443847656
1957	The Dashen Super App offers a modern, user-friendly experience that leverages the latest technological advancements to deliver a seamless e-commerce platform	5	2025-04-21	3	Google Play	positive	0.999481737613678
1958	Best App!	5	2025-04-21	3	Google Play	positive	0.9997498393058776
1959	I love it. one of the best mobile banking app in the banking industry	5	2025-04-21	3	Google Play	positive	0.999868392944336
1960	I love this app	5	2025-04-21	3	Google Play	positive	0.9998608827590942
1961	no working for me hulum information asgebiche continue or accept yemilew button ayeseram my phone is Samsung A51	1	2025-04-21	3	Google Play	negative	0.9980541467666626
1962	waw no idea the best app.	5	2025-04-19	3	Google Play	negative	0.9923465251922609
1969	Nice	5	2025-04-16	3	Google Play	positive	0.9998552799224854
1970	The Dashen Super App delivers a remarkably fast, highly secure, and exceptionally user-friendly experience, establishing it as a leading application in its category.keep it up and stay ahead Dashen Bank.	5	2025-04-14	3	Google Play	positive	0.99978905916214
1971	So far so good! their in person customer service is amazing ≡ƒæÅ	5	2025-04-14	3	Google Play	positive	0.9998642206192015
1972	The app is very backward and doesn't always work. If it works three hours out of 24 hours it's great!≡ƒÿÑ	1	2025-04-14	3	Google Play	negative	0.9958034157752992
1973	ßê¥ßê¡ßî½ßï¼ ßèÉßïì	5	2025-04-13	3	Google Play	negative	0.7850579619407654
1974	It's bad for the connection and too many days are it that not working	1	2025-04-12	3	Google Play	negative	0.9996840953826904
1975	it's samart	5	2025-04-10	3	Google Play	positive	0.9992457628250122
1976	The app is not working properly, I have been using it.	1	2025-04-10	3	Google Play	negative	0.999715268611908
1977	it is very good app	5	2025-04-10	3	Google Play	positive	0.9998699426651
1978	I had a disappointing experience with Dashen Bank's Super Up service. The app is very slow and takes forever to load during transactions, which is incredibly frustrating. Additionally, it doesn't generate receipts for any transactions, making it difficult to keep track of my expenses. I also reached out to customer support, but the response time was longer than expected. Overall, I was hoping for a better experience, but I find the service lacking and in need of improvement.	2	2025-04-09	3	Google Play	negative	0.9996039271354676
1979	slow cumbersome	3	2025-04-08	3	Google Play	negative	0.9997989535331726
1980	Is really ≡ƒÆÇ	2	2025-04-08	3	Google Play	positive	0.9858713746070862
1981	It's slow to send OTP. it's not reliable. It crushed many times. It needs improvement in many ways	1	2025-04-07	3	Google Play	negative	0.9997294545173644
1982	This is the worst mobile banking experience IΓÇÖve ever had. It doesnΓÇÖt work when you need it, and it randomly updates itself without warning. You canΓÇÖt make transactions whenever you want. ItΓÇÖs a nightmare for anyone who relies on this as their main banking option, especially those with a lot of money in their account. IΓÇÖm lucky IΓÇÖm not one of them, but still, itΓÇÖs infuriating not being able to access your money when you need it."l	1	2025-04-07	3	Google Play	negative	0.9996976852416992
1983	I have experienced on using the app of Banks in Ethiopia, this Dashen sup is like old version of the applications for using. I gave 3 star for it's very low speed while login and processing	3	2025-04-07	3	Google Play	negative	0.9981010556221008
1984	proud by dashen bank	5	2025-04-06	3	Google Play	positive	0.9998666048049928
1985	best	5	2025-04-06	3	Google Play	positive	0.9997941851615906
1986	This app is not working unless you turn off developer mode on your phone. So it takes your rights to just use it.	2	2025-04-04	3	Google Play	negative	0.9994447827339172
1987	real super up	5	2025-04-04	3	Google Play	positive	0.9998282194137572
1988	it's very disappointing fix it as soon as possible not expected from dashin bank fix it	1	2025-04-04	3	Google Play	negative	0.99936181306839
1989	why dashen bank workers hidden my ATM Card ≡ƒÅº?it's a big problem to me	5	2025-04-04	3	Google Play	negative	0.999297022819519
1990	tanku	5	2025-04-04	3	Google Play	negative	0.9159650802612304
1991	perfect	5	2025-04-03	3	Google Play	positive	0.9998517036437988
1992	goood	5	2025-04-02	3	Google Play	negative	0.9943867921829224
1993	why does it ask me for both pin and opt even the opt is touch let alone both	2	2025-04-02	3	Google Play	negative	0.9958769083023072
1994	it is best app easy to use	5	2025-04-01	3	Google Play	positive	0.986411154270172
1995	It is very easy to use and powerful application.	3	2025-04-01	3	Google Play	positive	0.9997655749320984
1996	this apps have a good feature but but some features like developer mode turn off irritate user	3	2025-04-01	3	Google Play	negative	0.997230589389801
1997	This is not only a mobile banking app, it is beyond that. We will access our account easily, we are able to get many information easily here. i.e. exchage rate. We are able to chat with others, we are able to budget, we are able to transfer to other bank and within Dashen. we are able to access many accounts in a single app, we are able to pay bills in QR scan, we are able to make payments and order delivery items here in a single app. #Always one step ahead.	5	2025-03-31	3	Google Play	positive	0.989782691001892
1998	wallahi very fantastic Bank	5	2025-03-31	3	Google Play	positive	0.999818742275238
1999	Waw, It's amazing app. thank you Dashen Bank.	5	2025-03-31	3	Google Play	positive	0.99986732006073
2000	nice app	5	2025-03-29	3	Google Play	positive	0.9998061060905457
2001	IΓÇÖve been using the Dashen Bank Super App for a while now, and itΓÇÖs been a game-changer. The app is super fast and reliableΓÇöIΓÇÖve never had an issue with transactions being delayed. One of my favorite features is the chat banking, which makes it so easy to do things like check my balance or transfer money just by typing a quick message. The budgeting tool is also really useful. It helps me keep track of my spending and gives me a clear picture of where	5	2025-03-28	3	Google Play	positive	0.9992021918296814
2002	nice application	4	2025-03-27	3	Google Play	positive	0.9998229146003724
2003	Very good app that like it too. B/c it is very fast and easy to use.	5	2025-03-26	3	Google Play	positive	0.9998027682304382
2004	best experiences	5	2025-03-26	3	Google Play	positive	0.9992781281471252
2005	too slow to use.	1	2025-03-26	3	Google Play	negative	0.9997276663780212
2006	ßîÑßê⌐ ßèÉßïì	5	2025-03-25	3	Google Play	negative	0.7850579619407654
2007	the worst app in the market only good ui	1	2025-03-22	3	Google Play	negative	0.9997721314430236
2008	nic	5	2025-03-22	3	Google Play	positive	0.9977141618728638
2009	ßëáßîúßê¥ ßëàßêìßêì ßï½ßêê ßèáßìò ßëáßê¡ßë▒ßêìßèò ßêêßèáßîáßëâßëÇßê¥ ßê¥ßë╣	5	2025-03-22	3	Google Play	negative	0.920040488243103
2010	thanks for all digital transaction	5	2025-03-21	3	Google Play	positive	0.9994550347328186
2011	Best	5	2025-03-20	3	Google Play	positive	0.9997941851615906
2012	Good	5	2025-03-20	3	Google Play	positive	0.999816119670868
2013	This app is not supporting smart phones that have old android version and so it is none inclusive. At the same time the amole lite is not working properly and once you reached to maximum otp trail mistakes due to network or other errors like stacks , you will be tied up to make Transactions. Ohh... tired!!!!!	1	2025-03-20	3	Google Play	negative	0.9997400641441344
2014	it's Be Come Busy &not working good	1	2025-03-20	3	Google Play	negative	0.999382257461548
2015	I wanted to share some concerns about your Supper App. It appears to be experiencing reliability issues and isnΓÇÖt performing as expected. I hope this can be addressed soon to improve the user experience. One star ≡ƒîƒ for now.	1	2025-03-19	3	Google Play	negative	0.9980534315109252
2064	It doesn't work	1	2025-02-07	3	Google Play	negative	0.9997813105583192
2016	best ever digital banking sector essay for understanding ,smart and convince for using	5	2025-03-19	3	Google Play	positive	0.9997392296791076
2017	good and latest	5	2025-03-18	3	Google Play	positive	0.9998561143875122
2018	The best App of all	5	2025-03-17	3	Google Play	positive	0.9998633861541748
2019	Worst app ever	1	2025-03-15	3	Google Play	negative	0.9997803568840028
2020	This app is the most unreliable mobile banking application I have ever used for transaction, it is very late, non-responsive and full of bugs. Its is very disappointing. It is just inconvinient, and not user friendly and compatabke at all !!!!!!	1	2025-03-14	3	Google Play	negative	0.9997894167900084
2021	Naiycapp	5	2025-03-14	3	Google Play	positive	0.8075160384178162
2022	The app is good but it has no USSD option	4	2025-03-13	3	Google Play	negative	0.9952346682548524
2023	Hey great	5	2025-03-12	3	Google Play	positive	0.999745786190033
2024	I have used many mobile banking and also tellebir and mpesa nothing come close to this app. Well done Dashen indeed one step a head. A lot of cool features that amole hasn't the receipt and the account statement is superb for me. I hope you add more integrated small apps to.	5	2025-03-12	3	Google Play	positive	0.9984980821609496
2025	The app is good but it ask update every week so tiring	2	2025-03-11	3	Google Play	negative	0.9951795339584352
2026	It good and easy to use	5	2025-03-11	3	Google Play	positive	0.9998750686645508
2027	ßëáßîúßê¥ ßèáßê¬ßìì ßêÿßë░ßîìßëáßê¬ßï½ ßèÉßïì ßìó ßèáßêÿßêáßîìßèôßêêßêü ßìó	5	2025-03-10	3	Google Play	negative	0.920040488243103
2028	Greately improved since it was released! I really like the budget and expense tegistration feature. For ATM or POS withdrawals, it is not possible to account these expenses, even if it is visible on the transactions window. If that can be worked on, it will be improve so much!!	5	2025-03-10	3	Google Play	positive	0.9655698537826538
2029	Excellent	5	2025-03-10	3	Google Play	positive	0.9998434782028198
2030	Wow Excellent app	5	2025-03-08	3	Google Play	positive	0.9998443126678468
2031	Nice app but i experience some issues with others banks transfer it keeps saying account is not exist most of the time.	4	2025-03-08	3	Google Play	negative	0.9983522891998292
2032	Add the option to send money to any telebirr account like amole does.	3	2025-03-08	3	Google Play	negative	0.995681881904602
2033	It's best	5	2025-03-08	3	Google Play	positive	0.999842643737793
2034	no one dashen yichlal	5	2025-03-07	3	Google Play	negative	0.9842472076416016
2035	In short ! I'm so proud of this app developers for their highest professional of developing. Thanks	5	2025-03-06	3	Google Play	positive	0.9998522996902466
2036	The speed is too slow. Need some improvements.	2	2025-03-06	3	Google Play	negative	0.9997935891151428
2037	good app	5	2025-03-04	3	Google Play	positive	0.9998493194580078
2038	Fantastic app	5	2025-03-01	3	Google Play	positive	0.999858856201172
2039	I wish dark mode feature is add as an option but it's good app	5	2025-02-27	3	Google Play	positive	0.9998013377189636
2040	Super Up is the ultimate digital banking app, living up to its name with speed, efficiency, and innovation. Designed for a seamless experience, it offers lightning-fast transactions, top-tier security, and effortless financial management. With Super Up, banking has never been this smooth, smart, and super!	5	2025-02-26	3	Google Play	positive	0.9995073080062866
2041	The Dashen Super App is a game-changer in digital banking, offering a seamless and convenient experience. With its user-friendly interface, fast transactions, and a wide range of financial services, it simplifies banking for customers. Features like bill payments, fund transfers, mobile top-ups, and loan applications make it an all-in-one solution. Plus, its security measures ensure safe and reliable Experiance effortless banking	5	2025-02-26	3	Google Play	positive	0.9977291226387024
2042	ßè¿ßî░ßèÉßî¿ßï¿ßîá	2	2025-02-26	3	Google Play	negative	0.6970561146736145
2043	It has good feature. But, it is Very Slow! difficult to pay or receive. The Speed should be improved, else I didn't recommend.	2	2025-02-24	3	Google Play	negative	0.9960646033287048
2044	Excellent app	5	2025-02-24	3	Google Play	positive	0.9998356103897096
2045	ßèáßìòßêìßè¼ßê╜ßèæ ßèáßê¬ßìì ßêåßèû ßê│ßêê ßë┤ßêîßëÑßê¡ ßïêßï░ßê½ßê╡ ßëÑßë╗ ßêêßê¥ßèò ßêåßèÉ ßèÑßèòßï░ ßï╡ßê«ßïì ßêêßê░ßïìßê¥ ßêÿßêïßè¡ ßëóßë╗ßêì	4	2025-02-22	3	Google Play	negative	0.9528431296348572
2046	No good	1	2025-02-22	3	Google Play	negative	0.9996987581253052
2047	Wow amazing app	5	2025-02-21	3	Google Play	positive	0.9998513460159302
2048	best platform... Please avoid otp	5	2025-02-21	3	Google Play	positive	0.9228954911231996
2049	Super smart app.	5	2025-02-18	3	Google Play	positive	0.9997984766960144
2050	best ≡ƒæì≡ƒæì	5	2025-02-16	3	Google Play	positive	0.9997019171714784
2051	I don't know what happens but the application is not send verification pass code you should fix that	1	2025-02-16	3	Google Play	negative	0.9973721504211426
2052	This app doesn't work on my phone my phone is Samsung Galaxy s7 android version 9 All other financial apps work like telebirr CBE M_pesa...	1	2025-02-14	3	Google Play	negative	0.9974337220191956
2053	Dashen Super app is secure, very easy to use and has more services uniquely like budgeting, chat, IPS...	5	2025-02-14	3	Google Play	positive	0.9937819838523864
2054	Amazing and user friendly supper app and looking forward the additional features	5	2025-02-14	3	Google Play	positive	0.9998486042022704
2055	it's amazing app i have seen ever	5	2025-02-13	3	Google Play	positive	0.9998574256896972
2056	One star deducted for not to able to transfer to telebirr.	4	2025-02-13	3	Google Play	negative	0.9903808236122132
2057	ßîÑßê⌐ ßèÉßïì ßîìßèò ßëáßï░ßèòßëÑ ßêèßê╕ßê╗ßêì ßï¡ßîêßëúßêì	4	2025-02-13	3	Google Play	negative	0.9046947360038756
2058	ßììßîÑßèÉßë▒ ßëáßîúßê¥ ßèáßê¬ßìì ßèÉßïì! ßèÑßèô ßëÇßêêßêì ßï½ßêê ßèÉßïì ! ßèÉßîêßê¡ ßîìßèò ßë░ßî¿ßê¢ßê¬ ßïêßï░ ßë┤ßêîßëÑßê¡ ßèñßîÇßèòßë╡ ßêÿßêïßè¬ßï½ ßèáßìò ßëóßè½ßë░ßë╡ßëáßë╡ ßîÑßê⌐ ßèÉßïì::	4	2025-02-12	3	Google Play	negative	0.9328101873397828
2059	Keep up the good work and pleas add water and electric utility payment	5	2025-02-12	3	Google Play	positive	0.9986761212348938
2060	The app missed some important features 1. It does't show recent transactions 2. Transfer to Telebirr limited to own telebirr 3. The statement does't show running balance	2	2025-02-11	3	Google Play	negative	0.9995891451835632
2061	Simple, Fast and Easy Γ¡ÉΓ¡ÉΓ¡É≡ƒÄë	4	2025-02-10	3	Google Play	positive	0.9996811151504515
2062	ßï¿ßêÜßîêßê¡ßê¥ aplication ßèÉßïì, ßèÉßîêßê¡ ßîìßèò ßëÑßê¡ ßë╡ßê½ßèòßê╡ßìêßê¡ ßê▓ßï░ßê¿ßîì ßï½ßêê ßìÆßèò ßêÿßêåßèæ risk ßèáßêêßïì ßêüßêë ßîèßï£ ßï¿ ßë╡ßê½ßèòßê╡ßìêßê¡ ßêÿßï░ßê¥ßï░ßêÜßï½ ßìÆßèò ßêÿßêåßèò ßèáßêêßëáßë╡!!!!!!!!!!!!:: ßèáßê▒ ßëóßê╡ßë░ßè½ßè¿ßêì 5 star ßèáßê╡ßè¿ßï¢ßïì ßîìßèò 4 ßê░ßîÑßë╗ßêêßïì::	4	2025-02-09	3	Google Play	negative	0.8565710783004761
2063	Baankii daashin baankii hudna galeessa galatoomaa isinii woliin jirra Godina jimmaa magaalaa Aggaaroo irraa Muaz Abamecha Abamilki	5	2025-02-07	3	Google Play	negative	0.9961472749710084
2065	#Dashen Super App; Super easy to use, secure, and fast transaction. Love it!	5	2025-02-07	3	Google Play	positive	0.99981027841568
2066	I tried the new Dash Bank Super App today, and it's amazingly easy and fun.I recommend you download and use it. You really like it	5	2025-02-06	3	Google Play	positive	0.9998507499694824
2067	Gud app kegza ga mezmn endze new aind ermjh kedme nachu hlam	5	2025-02-06	3	Google Play	negative	0.985221803188324
2068	Good app, bad security	3	2025-02-06	3	Google Play	positive	0.989300549030304
2069	On Transaction page only show sent Transaction. Try to include received transaction.	4	2025-02-06	3	Google Play	negative	0.9956958293914796
2070	Wonderful Application ≡ƒÿì	5	2025-02-05	3	Google Play	positive	0.9998589754104614
2071	I loved it	5	2025-02-05	3	Google Play	positive	0.9998809099197388
2072	ßèáßêüßèò ßîêßèô ßèáßèòßï╡ ßèÑßê¡ßê¥ßîâ ßëÇßï░ßê¢ßë╜ßïì	5	2025-02-04	3	Google Play	negative	0.8832125663757324
2073	I am so thankful for having this best app Dashen one step ahead	5	2025-02-04	3	Google Play	positive	0.999471127986908
2074	Not good this app	1	2025-02-04	3	Google Play	negative	0.9997790455818176
2075	Best app	5	2025-02-04	3	Google Play	positive	0.999686598777771
2076	Excellent app ever but it needs improvement on speed and transaction lists	1	2025-02-03	3	Google Play	negative	0.990936815738678
2077	Perfect	5	2025-02-02	3	Google Play	positive	0.9998517036437988
2078	It does not work functional ,	1	2025-02-02	3	Google Play	negative	0.9997901320457458
2079	Ok	5	2025-02-02	3	Google Play	positive	0.9997851252555848
2080	all of dashen bank customers use the application it is good to use	5	2025-02-01	3	Google Play	positive	0.9958037734031676
2081	Gret experience	5	2025-02-01	3	Google Play	negative	0.7600295543670654
2082	All good we need more	3	2025-01-31	3	Google Play	positive	0.9996538162231444
2083	Dashen super app is easy to use, fast and robust	5	2025-01-31	3	Google Play	positive	0.9997517466545104
2084	it was amazing app.....thank you dashen bank....	5	2025-01-30	3	Google Play	positive	0.9998608827590942
2085	Dashen bank super app for easy life.	5	2025-01-30	3	Google Play	positive	0.772305965423584
2086	Excellent UI/UX and beyond Banking services≡ƒæì≡ƒæì	5	2025-01-30	3	Google Play	positive	0.9995208978652954
2087	Send to oher bank ßï¿ßêÜßêêßïë ßïëßê╡ßîÑ ßîêßëÑßë░ßèò ßïêßï░ addisinternational bank ßêêßêÿßêïßè¡ ßèáßï¡ßê░ßê½ßê¥ ßêüßêêßë░ßè¢ ßï░ßîìßê₧ ßïêßï░ cbe birr ßêêßêÿßêïßè¡ account number ßï¡ßîáßï¡ßëâßêì ßê₧ßëúßï¡ßêì ßèÉßëáßê¡ ßèÉßïë ßêÿßîáßï¿ßëà ßï½ßêêßëáßë╡ ßï¡ßêÿßê╡ßêêßè¢ßêì	2	2025-01-29	3	Google Play	negative	0.9945861101150512
2088	Just Wow	5	2025-01-29	3	Google Play	positive	0.999775230884552
2089	mobile banking to the next level	5	2025-01-28	3	Google Play	positive	0.9409880042076112
2090	The first 3 star review is me	3	2025-01-25	3	Google Play	positive	0.9967767596244812
2091	Is not working	1	2025-01-25	3	Google Play	negative	0.9997809529304504
2092	Fast, reliable and user friendly. Amazing chatting features. Keep it up! Always one step ahead!	5	2025-01-24	3	Google Play	positive	0.9998725652694702
2093	V good Γ¥ù∩╕Å	5	2025-01-24	3	Google Play	positive	0.9993855953216552
2094	This app is literally the best thing ever The chat banking is so easy just text and itΓÇÖs done Super smooth, fast, and honestly a life saverIf you havenΓÇÖt downloaded it yet youΓÇÖre missing out big time	5	2025-01-23	3	Google Play	positive	0.9862456321716307
2095	I only see white page	2	2025-01-23	3	Google Play	negative	0.9910238981246948
2096	Excellent banking app for all your needs! Who needs a physical branch when you can use Dashen Bank Super App Instead! I've never had an issue with anything that Dashen Bank Super App haven't handled swiftly and resolved to my satisfaction and above I don't often write reviews but this is an app/bank that I would highly recommended to everyone ≡ƒÆ» ≡ƒæî≡ƒæì	5	2025-01-22	3	Google Play	positive	0.9994206428527832
2097	Amizing Application ≡ƒÿì	5	2025-01-22	3	Google Play	negative	0.9905143976211548
2098	Fastest and easy to use	5	2025-01-22	3	Google Play	positive	0.9997114539146424
2099	ßê╡ßê¥ ßëÑßë╗ ≡ƒÿÅ	2	2025-01-21	3	Google Play	negative	0.8337247967720032
2100	Exellent app with exellent banking system and exellent bank ever	5	2025-01-21	3	Google Play	negative	0.9579959511756896
2101	Amazing app to use as usual! But why option of transferring to Telebirr and M pesa which was available on Amole app is omitted?? Dasheen is my favourite keep it up.	4	2025-01-20	3	Google Play	positive	0.9711759686470032
2102	Needs some improvement	5	2025-01-20	3	Google Play	negative	0.998008668422699
2103	Amazing	5	2025-01-20	3	Google Play	positive	0.999875545501709
2104	Amazing super app	5	2025-01-19	3	Google Play	positive	0.9998658895492554
2105	I hope it will be better than amole	5	2025-01-18	3	Google Play	positive	0.9969701766967772
2106	Wly Super App ilove it Γ¥ñ∩╕Å ≡ƒÿì ≡ƒÆû ≡ƒÆò	5	2025-01-18	3	Google Play	negative	0.9463616013526917
2107	Dashen yichalal. Ewnetem one step a head	5	2025-01-17	3	Google Play	negative	0.9832626581192015
2108	It has a Good performance but need more upgrade for more performance like when we login account not be fast balance show other thing looking good. Carry on. Thanks so much for Greatest service	4	2025-01-17	3	Google Play	positive	0.9967933297157288
2109	It is a very wonderful work that has saved its time. That is why it is "Always one step ahead!"	5	2025-01-17	3	Google Play	positive	0.99988055229187
2110	ΓÇ£Life-changing!ΓÇ¥ I canΓÇÖt imagine going back to traditional banking after using this app. ItΓÇÖs so convenient.	5	2025-01-17	3	Google Play	positive	0.9968047142028807
2111	Pro max	5	2025-01-17	3	Google Play	positive	0.9984601736068726
2112	The most good app and easy	5	2025-01-16	3	Google Play	positive	0.9998631477355956
\.


--
-- Name: banks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banks_id_seq', 3, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_id_seq', 2112, true);


--
-- Name: banks banks_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_name_key UNIQUE (name);


--
-- Name: banks banks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_bank_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_bank_id_fkey FOREIGN KEY (bank_id) REFERENCES public.banks(id);


--
-- PostgreSQL database dump complete
--

