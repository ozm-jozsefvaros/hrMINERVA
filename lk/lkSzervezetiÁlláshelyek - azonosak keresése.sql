SELECT First(lkSzervezetiÁlláshelyek.ÁlláshelyAzonosító) AS [ÁlláshelyAzonosító Mező], Count(lkSzervezetiÁlláshelyek.ÁlláshelyAzonosító) AS AzonosakSzáma
FROM lkSzervezetiÁlláshelyek
GROUP BY lkSzervezetiÁlláshelyek.ÁlláshelyAzonosító
HAVING (((Count(lkSzervezetiÁlláshelyek.ÁlláshelyAzonosító))>1));
