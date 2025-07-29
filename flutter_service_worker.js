'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "1e5b661bf7429668a84a61aa6f4af3e5",
"version.json": "9b818ca9511483c901bed1545384376c",
"index.html": "5d5550ccf3c3a05fc3564844b524b343",
"/": "5d5550ccf3c3a05fc3564844b524b343",
"main.dart.js": "c6ccdb7058b6e60917c327f520bb05ae",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "e2b9103aaafaf8ed9f90576c9d9a1341",
".git/config": "40dfe97b116ce271bed42e11d74fbfec",
".git/objects/59/2efedcb2f29b8e066c18efccf1017ea22c61ee": "1a052deae7ba329f771be0d6aadcc02b",
".git/objects/59/75d055b8023a1c8c58dd53a24f258f8aac5cc5": "3cbbf641b9507f92b28cf751c277bd50",
".git/objects/0c/e3ca61d449edcb8def7ef397096deb6fd07859": "9dc58fa2dd5ebf74374226e605b23877",
".git/objects/3b/a62ed53a266bef0b25d461ba834fb94f7538ca": "8bf1f366716b04dc0b64055b94b9162b",
".git/objects/6f/717d6765ff91260da5a86c9c843c6b8188babb": "8c46c571c1553c1542d52d711edd2591",
".git/objects/9b/39ba2ce36562087600fd7bed1a68debb3dd8fd": "c00c1162db9ca896f07e1eb8becea624",
".git/objects/9b/d3accc7e6a1485f4b1ddfbeeaae04e67e121d8": "784f8e1966649133f308f05f2d98214f",
".git/objects/6a/1c2efc53f4c10518abe5a7bb55fb351bbaf11a": "1b78493a5ac345c378bee662fc57050a",
".git/objects/56/264d79285a78353351d05c48a25cd03bf15cc5": "fec46ecfac1c86fe7edb350ee601da78",
".git/objects/58/31840272dc1c691085a1cda9eff0467b035365": "adfbc6c173c4e9b037c82eb43ea9b9d0",
".git/objects/93/95a2d334165b043a44e12815029e127fbddd40": "b0705014d5c957c020b25e475cab66af",
".git/objects/60/a805311c65957a4a647c6f9cad6e62f2369a40": "f147a60aee6a7527288f322bf038cf81",
".git/objects/34/4b097ba6f9a3ee0ad51b7284bc4b1084bf9881": "0267961e4395d9a0576c96ae81608ff0",
".git/objects/05/ec677a5c4d63bedad09cf73d3953094b2edfad": "b0477a4e6db5cd3c60eb8dd5e1f70532",
".git/objects/a3/8877efc1245b78803bb325c166d6c38ab60b02": "6b562c1b2ad7148c6355152c4bfdaac2",
".git/objects/b5/e4a52c7c1a1a5a56f609c82776998ef74638ee": "33089c3522ddf3ac9a2b1bdcdd425efa",
".git/objects/a5/6c5fe77ae8b2971ab2ae9895a57b01d1063d47": "8ddf3aa10b3573405fe83d47d69b46ca",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/e2/7b93e3211ea756fb816d935b85b44425939a71": "68e7820836eead45921a54f5f5d839e4",
".git/objects/f3/55a7094deb75804d9b303d200a5557c15fd977": "bf713b45b24fb019e6e17a0a7fd610f7",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ee/b892e562c15a5c19e1c84ea9e1c722320faa78": "ba94060f608e66aa61e0398aa503de1b",
".git/objects/c9/f3a619ddc571929ff9285f92e66c4e84bf18a8": "d91cb764579aeccb37cc1ebe1b1e846d",
".git/objects/fc/670d19e6e092a6aaa54a55eee38b010849b592": "db30ba7b07ab1aaa8d98491333de54a7",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/21/4215a03b2343798e31d9cbcc9d8029380a11ad": "b0486f433d29368a047e2605d1a4d154",
".git/objects/2f/5cc8a5666866cabe32f29ca881cb0d62bf49bd": "efc2c4346f61190dfbaa3b3cf7556de8",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/07/03382a65b8fb69f57f02f74facce3ca84a67bd": "dd4f56e05a74a688dfe0340426a084f2",
".git/objects/9a/54a12e07518d774d1aec7f8994c2ac75cc147f": "62e5b19dc0e38064163a0f5de7638115",
".git/objects/31/edfe0161ac7c9117968bc771793148e630f501": "fcc5d3924928b9eb3261fa4aeafc0a80",
".git/objects/65/6a17ca8f170e9f40aeb90158ff60d47ed1be6e": "e6ef6f485525aea8d830876496c6c131",
".git/objects/98/bfcbd26066d024e374b31a4cc86efe0c29e343": "5854f79d9f4f2f86066e70f6c9fa626b",
".git/objects/30/4cb510df0b735e6c51fc473cd4b696e7eec69b": "4684a9dd2c4568cfeb1dfd593206de6d",
".git/objects/5e/bf37944a56f2b5e479e3858392c6e9030da2da": "d874f5ce1eb6512c7b77ebd17b676f00",
".git/objects/08/b83369a327af2f21471579401f6567aa2f0d3a": "3bd3efa18410cb83ef18c936bb244f81",
".git/objects/52/896f461139823daf687cc35421b4042e303fbc": "63a42eee682858c78a1735754a5479b4",
".git/objects/63/21b3a89df587f2d2841c1345efbd609cf969c1": "d8d64416b5b21d4f6a787a40b68f0685",
".git/objects/64/312c146aa1ae5c30b1480c364c4ce93fb1e639": "c7fb5d769859260b66a27feadbdbbadd",
".git/objects/bf/00aef3a2ad843d14807796df193f564c78e315": "1f58e24db3e41d05da6c45afc8449a08",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d4/b5a85af5d6e581efd3aff443a9412bacc64ed5": "a7d4003666d8a4f442aac0a5a3f30e8e",
".git/objects/dc/11fdb45a686de35a7f8c24f3ac5f134761b8a9": "761c08dfe3c67fe7f31a98f6e2be3c9c",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/a8/6f703084d17020859a78f48b1175cc0d672a94": "efb2d3f99c30fff1f13ae08e6c33b7a5",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/0efadfd3b29e71449fe720b0d503d3a71e78fc": "1e1acdc2ff3aebde051a6ce6c0c9315c",
".git/objects/b9/6a5236065a6c0fb7193cb2bb2f538b2d7b4788": "4227e5e94459652d40710ef438055fe5",
".git/objects/ef/34f76fdb1922687948e4705c4b677b259f47f0": "6da6430ac94f3e16138c9841a5399a79",
".git/objects/c3/5d0bd0cda28038f30a529c108e16125c121abf": "7be783702be5371eca94b465bc76e3f8",
".git/objects/e1/7ccb1c34e1455bf615294dc0509afa05983386": "74294090e31c4b5f6ab96a70dd123c91",
".git/objects/cd/b7b724048be1a939fedf06b15a146bf514178d": "3d1bee1c704a457f9cb510d693add525",
".git/objects/c5/9da48e8d0644fd89382030e17bbae470e14fde": "84a7c4f2e14b8a149e50a26456ff5aac",
".git/objects/c2/de2acec1324290949b2241c8c14a01b1913091": "5b0c52a514133f5d5dd0063460f063a0",
".git/objects/f8/9b5da424d035015ffc80debc8adb58b23cfb95": "ee7739b626f7bba19fcb83356688720b",
".git/objects/ce/e3c5bb4ad9ca1b7e02e3391cc1cbba998308b7": "8e23cc0d8eea61c17a30b19ec3ccb417",
".git/objects/e0/9da16eef2f62d6f899a794af39a268f266bca6": "4a93dfb6316043acad5c1784b147b6d1",
".git/objects/83/321873df67af65373e16251df64b46a04a9203": "c00f110cd0b61b6770140eff9038140e",
".git/objects/48/82dca8303762f0018143b1a3d452cd068c4e40": "39738fff4d607664c7d0f42cef36de51",
".git/objects/48/37533a8ffb636e111644446b8b5254d152a146": "54ab11d80a5332cf91fd2999264849ea",
".git/objects/70/a234a3df0f8c93b4c4742536b997bf04980585": "d95736cd43d2676a49e58b0ee61c1fb9",
".git/objects/4a/fd35f5b3d405838ccc05e9452e0f1ef36a70c9": "76b8739c86194baab36eba5247d00105",
".git/objects/4a/84ccb6fc29fba93441b9f5d820b189e90ab1b7": "29d1182333866f068e94eddf35285927",
".git/objects/23/637bc3573701e2ad80a6f8be31b82926b4715f": "5f84f5c437bb2791fdc8411523eae8ff",
".git/objects/85/7c07a2c70bb7b80e10429285f534bb47fc1fc2": "b2ea99aa10ccddafa502883a0db4fe91",
".git/objects/82/09f77036655d8ecf486cdd18a05782e2e620e2": "9b6cad28330df1623ec7051c0aaa1b13",
".git/objects/49/3c150e0bc17e892acb7f4b7b27c1b8e8d66e7f": "de655d3d0ddc9c423efd0a8e858fc0fd",
".git/objects/40/df58970e0517c78fc530fd8464e1367fe78246": "429bd3830009717347814635bc4f9f6b",
".git/objects/47/bd03b270d6c986367ad3ef5e6a68200bed6254": "8892b5bd570d2ac7beda6111da266af7",
".git/objects/7f/187dad236f9b9fd0c8beb32cfec99f42df2230": "43da4cd1da9956277f7caf28d963e1c7",
".git/objects/22/a8636698707047889854eccf24f30e95429a05": "b693703097626008df058b426d7d04e2",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "6f1b2d912847215a85479b3f1261b41e",
".git/logs/refs/heads/gh-pages": "6f1b2d912847215a85479b3f1261b41e",
".git/logs/refs/remotes/origin/gh-pages": "5e1333802165a2fcdc572ba6a8bc5a5a",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/gh-pages": "c4f73277ebe54d3e3d0f4540f829492a",
".git/refs/remotes/origin/gh-pages": "c4f73277ebe54d3e3d0f4540f829492a",
".git/index": "bc1ea107f6081b420a8dba19087003b1",
".git/COMMIT_EDITMSG": "813d741da31e997ff950474ef6915536",
"assets/AssetManifest.json": "f9f3d5f34bca1b173928016a0a29392a",
"assets/NOTICES": "d5c82af64b0a965053d5b9ed33d4cdb4",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/AssetManifest.bin.json": "628b3602ca7f8e152b36869552ccf350",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "825e75415ebd366b740bb49659d7a5c6",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "6f624f49774562b2b22602cf19b161fd",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "28aad62eaa87fb4f74f963615f24982c",
"assets/fonts/MaterialIcons-Regular.otf": "7234a8b5dc7b27c4fa2e86f9a8a573d8",
"assets/assets/img/icons8-google-firebase-console-480.png": "6af11af3dbb7a69ec796e52edb27ab8c",
"assets/assets/img/icons8-figma-240.png": "897539713a3105b6ee3b797851459130",
"assets/assets/img/icons8-ios-logo-512.png": "565635cad76defdeec3a27eb3f2b13f9",
"assets/assets/img/chennaimatrimony.png": "fa4e81fceb817ffe47018ac2e8363e25",
"assets/assets/img/icons8-whatsapp-logo-144.png": "2cd148794d50155a14e6434e523abae2",
"assets/assets/img/icons8-git-logo-240.png": "91e38c1fb4b2410c06d56542d09086d0",
"assets/assets/img/icons8-flutter-logo-48.png": "8efb797d33c586ef3cb71d4083dd1fdb",
"assets/assets/img/J%2520Pushparaj_3.5+%2520Year_Expflutter_developer.docx": "7e80d9a21a1b0d57d324faf472005b0b",
"assets/assets/img/icons8-dart-480.png": "b73081b39828581f204c481373c77e4e",
"assets/assets/img/icons8-canva-app-240.png": "4fcee6bda525ab246add8785a8dce7af",
"assets/assets/img/icons8-android-logo-480.png": "0df7ae36dc9dedffe5db8c077f957914",
"assets/assets/img/icons8-mysql-logo-240.png": "bd6f6745a7569e06343ae13832f4d1fc",
"assets/assets/img/icons8-visual-studio-code-2019-240.png": "ba8b83857be1865c85eeba0a60a0d1d4",
"assets/assets/img/icons8-github-logo-250.png": "bde2735d80b1a444b05ddb63a6430d41",
"assets/assets/img/icons8-android-studio-240.png": "c8ba0e2afa2109211b061e64d1c02b22",
"assets/assets/img/icons8-ios-logo-256.png": "746eb6ace7d7a96ceb13c8a21af2c69c",
"assets/assets/img/MongoDB.png": "36ffda1a0321d6fdff7cff97e855b755",
"assets/assets/img/HIK05007-Photoroom%2520(1).jpg": "0d48b4a82fa296c6f448750c953e64da",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "9fe690d47b904d72c7d020bd303adf16",
"canvaskit/canvaskit.js.symbols": "27361387bc24144b46a745f1afe92b50",
"canvaskit/skwasm.wasm": "1c93738510f202d9ff44d36a4760126b",
"canvaskit/chromium/canvaskit.js.symbols": "f7c5e5502d577306fb6d530b1864ff86",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.wasm": "c054c2c892172308ca5a0bd1d7a7754b",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.wasm": "a37f2b0af4995714de856e21e882325c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
