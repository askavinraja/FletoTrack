'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "a8297d555dd34879e8e48e1cf12acefa",
".git/config": "592278b6777e210b63d391e352d08107",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/update.sample": "7bf1fcc5f411e5ad68c59b68661660ed",
".git/index": "2530c3afd8a32d0d2247d3578647fed1",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "76df504f99121bf6d3c5509f7b10ea3a",
".git/logs/refs/heads/master": "76df504f99121bf6d3c5509f7b10ea3a",
".git/logs/refs/remotes/origin/master": "2c67e60bea4f8823217c04be1daeb249",
".git/objects/00/6ac61d92c1888cee05e285ab94a9431177e9c4": "a96e50508e786331106023fc5dc8d66a",
".git/objects/11/ebe0abf0e894a859e0fb58e7eae195cda45183": "a448adc1da0456db701dc50d773d932a",
".git/objects/19/74914f63b7e8aeff89e12813552bd847292e57": "50e4023dfa852e20f6d814839a7777b0",
".git/objects/22/ad973655c7541c35853f7f585571440ddbd13a": "7ca5e0f293a6c7a80c80b839e873bf68",
".git/objects/23/6da44825df36fe88c4fa972142c32546be3244": "ba2ae74c6f2730e3c3a384c77e457b12",
".git/objects/27/ef4ef119f5b73afd99a88e08d06f221e2b2cba": "99e3760027850b259e4318a60a9b2160",
".git/objects/2d/0471ef9f12c9641643e7de6ebf25c440812b41": "d92fd35a211d5e9c566342a07818e99e",
".git/objects/3c/b3b53a24ee4712b8463133dca203ddd72fb43b": "c3066eae2c84f5465b93f0624f5ecfa6",
".git/objects/3c/fc344a6f31d9931728880904124848d70c247a": "24b44312c0c5f39e0bcb4134199246b5",
".git/objects/3e/e92580ff38986870849768a0de4919acad43eb": "5f74bef2d35cf072ae5e1dfee7a3cea4",
".git/objects/43/306999015da34b9728701a6ae035200daecb33": "6bf30774e7bacf09a6c866621c52ab81",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/62/0b3ec8a68c6dec4e88b66fd885510dc0920d8b": "8793fd14b1d024bfd492db868fed5221",
".git/objects/65/b384c04ef7ee9fb9b7582b77377280c5d64cd5": "88422bbb2bc42436f8f242eb59c23af7",
".git/objects/6a/0c2473bc8ae5dc27731e47fe94423d658835e1": "ab498bf8418a964e98361bb789d19ac7",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/87/55c0fa29744b293b0b969b8837bfcf33091f7b": "14d3adf50ad46ecb39491a7428416674",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a8/3a17d54b6dc2156c855c6580301cefc9c8d017": "6525101be8d70b808a809af9c83fa4ad",
".git/objects/ab/414f576d7ebf19e8175cc1e731644ad9bfef04": "8df933359505a9d10a519565ec44748f",
".git/objects/ac/dff003233d90b91aebe67dcd38d5049aacda7b": "6fea100e06e06948e49143e92be1a8dd",
".git/objects/c0/3874e83b69584fa80e9c7b791faf8df57ea768": "0004a344d2da3d0bd4d5cfd6dd685208",
".git/objects/c2/fbe3e00aa72df75adb3d9100da6836b285b33a": "74d1d0e237adc350206cf1930fb42955",
".git/objects/c9/ab83b05501049f1514126e0341b69ceaa9754d": "8230010788d3baf98cb9650a4bc51ac9",
".git/objects/ce/2c0048f4b7068825b71efe8b805c4a66e8a9e3": "c06e7e8c6b43e1513176e3505245b11d",
".git/objects/ce/64d5d7541c823ae1cbb1d55bb1e2963d4684cf": "3dbfc86f9355c23c4419cf7c762d96de",
".git/objects/d1/5b6bb729c20384e7ba811dd41bc89eccbec72d": "ab80e205dffaff703f983f922d74bba3",
".git/objects/e3/1c094acc41082b22ddd6f34109fb39c41bfd00": "30348bfe439664761f29dcf2956050a9",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/ed/07bf4ff96e821d72b0844d2f66acf508b117d3": "61353914ade90a8a40e2e20bfcba31a8",
".git/objects/f2/5787c93ad00665f0f797a43ab397f0628a273e": "59e425d1456034072d902c75d18ec75f",
".git/refs/heads/master": "321e075a6096fc9eb49561553479b7b5",
".git/refs/remotes/origin/master": "321e075a6096fc9eb49561553479b7b5",
"assets/AssetManifest.json": "b09b9bd3e34d01ea30f7bd992be74470",
"assets/assets/maps/as.png": "c7f032c9bc50bddffcfe081443205e45",
"assets/assets/maps/driverCarMarker.png": "b639e09b7dbede86df7622c908cedee5",
"assets/assets/maps/map_style.txt": "6360aa79ecc5b32c812dbc4237fc8fe0",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/NOTICES": "5cf206d6b92d9368f684624e76c8b3c3",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "e7006a0a033d834ef9414d48db3be6fc",
"favicon.ico": "5112fa3ad385c27f13a5a0d14018a6b2",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "97b786c025683a17997d95acf69a4c9c",
"icons/Icon-512.png": "6e59d1c41b74e2590fa37caf9d1b8bcd",
"index.html": "dd5ba284fdd5012d14867b9afcd95c74",
"/": "dd5ba284fdd5012d14867b9afcd95c74",
"main.dart.js": "ce7d4ecb2d49bc3b8ba93c1c9e5aaff1",
"manifest.json": "e3955dccb61866ae34ca4edf1e7c856c",
"style.css": "408b332bfedc9da6c15d323aa4d61051",
"version.json": "34081e4dbbe53ccef60e341785de0011"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
