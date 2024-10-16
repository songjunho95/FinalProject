document.getElementById('imageUpload').addEventListener('change', function() {
    const file = this.files[0]; // 선택된 파일
    const imagePreview = document.getElementById('imagePreview'); // 이미지 미리보기 요소

    if (file) {
        const reader = new FileReader();
        reader.onloadend = () => {
            imagePreview.src = reader.result; // 파일을 Data URL로 변환하여 미리보기 이미지 설정
            imagePreview.style.display = 'block'; // 이미지 미리보기 표시
        };
        reader.readAsDataURL(file); // 파일 읽기
    } else {
        imagePreview.src = ''; // 파일이 없으면 미리보기 이미지 초기화
        imagePreview.style.display = 'none'; // 이미지 미리보기 숨김
    }
});
