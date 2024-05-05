var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (g && (g = 0, op[0] && (_ = 0)), _) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
var _this = this;
document.addEventListener('DOMContentLoaded', function () { return __awaiter(_this, void 0, void 0, function () {
    var toHome, toLogout, trackContainer, arr, id, songRes, songs, str;
    return __generator(this, function (_a) {
        switch (_a.label) {
            case 0:
                toHome = document.getElementById('toHome');
                toLogout = document.getElementById('toLogout');
                toHome.addEventListener('click', function () {
                    window.location.replace('/albums/manage');
                });
                toLogout.addEventListener('click', function () {
                    window.location.replace('/logout');
                });
                trackContainer = document.getElementById('tracks');
                arr = window.location.href.split('/');
                id = arr[arr.length - 1].slice(0, 24);
                return [4 /*yield*/, fetch('/albums/songs/' + id)];
            case 1:
                songRes = _a.sent();
                return [4 /*yield*/, songRes.json()];
            case 2:
                songs = _a.sent();
                str = "";
                songs.forEach(function (song) {
                    // audio file path
                    var arr = song.filePath.split('\\');
                    var path = "/" + arr[1] + "/" + arr[2];
                    str += "<div class=\"rounded-[5px] border-2 border-white flex flex-wrap justify-between items-center py-2 px-5 hover:bg-neutral-900 hover:bg-opacity-35\"><div class=\"flex gap-4 items-center\"><img src=\"/images/albumPlaceholder.png\" alt=\"Album Art for the Track\" class=\"h-10\"><p class=\"text-lg\">".concat(song.name, "</p></div><audio src=\"").concat(path, "\" controls class=\"bg-purple-500 rounded-md w-full my-1 md:my-0 md:w-fit\"></audio></div>");
                    console.log(path);
                });
                trackContainer.innerHTML = str;
                return [2 /*return*/];
        }
    });
}); });
