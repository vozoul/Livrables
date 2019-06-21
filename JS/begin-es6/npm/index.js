const imagemin = require('imagemin');
const imageminPngquant = require('imagemin-pngquant');

(async () => {
    await imagemin(['img/*.png'], 'optimized/img', {
        plugins: [
            imageminPngquant({ quality: [0, 0.05] })
        ]
    });

    console.log('Images optimized');
})();