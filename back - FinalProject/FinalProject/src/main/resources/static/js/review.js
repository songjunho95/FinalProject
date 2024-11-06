
    const imageInput = document.getElementById('imageUpload'); // 이미지 파일 입력
    const file = imageInput.files[0]; // 선택된 이미지 파일



document.getElementById('imageUpload').addEventListener('change', function() {
    const file = this.files[0]; // 선택된 파일
    const imagePreview = document.getElementById('imagePreview'); // 이미지 미리보기 요소

    if (file) {
        const reader = new FileReader();
        reader.onloadend = () => {
            imagePreview.style.display = 'block'; // 이미지 미리보기 표시
        };

});
